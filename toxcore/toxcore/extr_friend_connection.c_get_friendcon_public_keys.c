
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int dht_temp_pk; int real_public_key; } ;
typedef int Friend_Connections ;
typedef TYPE_1__ Friend_Conn ;


 int crypto_box_PUBLICKEYBYTES ;
 TYPE_1__* get_conn (int *,int) ;
 int memcpy (int *,int ,int ) ;

int get_friendcon_public_keys(uint8_t *real_pk, uint8_t *dht_temp_pk, Friend_Connections *fr_c, int friendcon_id)
{
    Friend_Conn *friend_con = get_conn(fr_c, friendcon_id);

    if (!friend_con)
        return -1;

    if (real_pk)
        memcpy(real_pk, friend_con->real_public_key, crypto_box_PUBLICKEYBYTES);

    if (dht_temp_pk)
        memcpy(dht_temp_pk, friend_con->dht_temp_pk, crypto_box_PUBLICKEYBYTES);

    return 0;
}
