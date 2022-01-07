
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int cryptopacket_handler_callback ;
struct TYPE_5__ {TYPE_1__* cryptopackethandlers; } ;
struct TYPE_4__ {void* object; int function; } ;
typedef TYPE_2__ DHT ;



void cryptopacket_registerhandler(DHT *dht, uint8_t byte, cryptopacket_handler_callback cb, void *object)
{
    dht->cryptopackethandlers[byte].function = cb;
    dht->cryptopackethandlers[byte].object = object;
}
