
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int dht_temp_pk; scalar_t__ dht_lock; int dht_pk_lastrecv; } ;
struct TYPE_7__ {int dht; } ;
typedef TYPE_1__ Friend_Connections ;
typedef TYPE_2__ Friend_Conn ;


 int DHT_addfriend (int ,int const*,int ,TYPE_1__*,int,scalar_t__*) ;
 scalar_t__ DHT_delfriend (int ,int ,scalar_t__) ;
 int crypto_box_PUBLICKEYBYTES ;
 int dht_ip_callback ;
 TYPE_2__* get_conn (TYPE_1__*,int) ;
 int memcpy (int ,int const*,int ) ;
 int printf (char*) ;
 int unix_time () ;

__attribute__((used)) static void change_dht_pk(Friend_Connections *fr_c, int friendcon_id, const uint8_t *dht_public_key)
{
    Friend_Conn *friend_con = get_conn(fr_c, friendcon_id);

    if (!friend_con)
        return;

    friend_con->dht_pk_lastrecv = unix_time();

    if (friend_con->dht_lock) {
        if (DHT_delfriend(fr_c->dht, friend_con->dht_temp_pk, friend_con->dht_lock) != 0) {
            printf("a. Could not delete dht peer. Please report this.\n");
            return;
        }

        friend_con->dht_lock = 0;
    }

    DHT_addfriend(fr_c->dht, dht_public_key, dht_ip_callback, fr_c, friendcon_id, &friend_con->dht_lock);
    memcpy(friend_con->dht_temp_pk, dht_public_key, crypto_box_PUBLICKEYBYTES);
}
