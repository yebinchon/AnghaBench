
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DHT ;


 scalar_t__ DHT_isconnected (int *) ;
 int doMessenger (int ) ;
 int m ;

void do_tox(DHT *dht)
{
    static int dht_on = 0;

    if (!dht_on && DHT_isconnected(dht)) {
        dht_on = 1;
    } else if (dht_on && !DHT_isconnected(dht)) {
        dht_on = 0;
    }

    doMessenger(m);
}
