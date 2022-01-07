
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int IP_Port ;
typedef int DHT ;


 int getnodes (int *,int const,int const*,int const*,int *) ;

void DHT_getnodes(DHT *dht, const IP_Port *from_ipp, const uint8_t *from_id, const uint8_t *which_id)
{
    getnodes(dht, *from_ipp, from_id, which_id, ((void*)0));
}
