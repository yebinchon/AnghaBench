
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Friend_Connections ;


 int dht_pk_callback (int *,int,int const*) ;

void set_dht_temp_pk(Friend_Connections *fr_c, int friendcon_id, const uint8_t *dht_temp_pk)
{
    dht_pk_callback(fr_c, friendcon_id, dht_temp_pk);
}
