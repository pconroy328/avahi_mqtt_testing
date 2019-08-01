/*
 */

/* 
 * File:   main.c
 * Author: pconroy
 *
 * Created on July 1, 2019, 4:08 PM
 */

#include <libmqttrv.h>
#include "uthash/utlist.h"
#include <mosquitto.h>


extern  int             MQTT_Connect( const char *brokerHostName, struct mosquitto **aMosquittoInstance, const int anyBrokerAllowed );

int main(int argc, char*argv[]) 
{
    struct mosquitto *aMosquittoInstance;
    MQTT_Connect( "mqttrv", &aMosquittoInstance, 1 );
    
    
    
    MQTTBrokers_t  *head = MQTT_FindAllBrokers( "_mqtt._tcp", NULL );
    MQTTBrokers_t  *element1, *element2;
    
    LL_FOREACH_SAFE( head, element1, element2) {
        printf( "Found service at host [%s], address [%s], port [%d], description [%s]\n", element1->hostName, element1->address, element1->portNumber, element1->description );
    }
    
    MQTT_CleanUp_After_Find();
    
    head = MQTT_FindABroker( "mqttrv", "_mqtt._tcp", NULL );
           
    LL_FOREACH_SAFE( head, element1, element2) {
        printf( "Found service at host [%s], address [%s], port [%d], description [%s]\n", element1->hostName, element1->address, element1->portNumber, element1->description );
    }
    
    MQTT_CleanUp_After_Find();    
}


