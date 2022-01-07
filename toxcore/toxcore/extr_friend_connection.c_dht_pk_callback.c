
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_8__ {int crypt_connection_id; int onion_friendnum; int dht_temp_pk; } ;
struct TYPE_7__ {int onion_c; int net_crypto; } ;
typedef TYPE_1__ Friend_Connections ;
typedef TYPE_2__ Friend_Conn ;


 int change_dht_pk (TYPE_1__*,int ,int const*) ;
 int crypto_kill (int ,int) ;
 int friend_new_connection (TYPE_1__*,int ) ;
 TYPE_2__* get_conn (TYPE_1__*,int ) ;
 int handle_status (void*,int ,int ) ;
 int onion_set_friend_DHT_pubkey (int ,int ,int const*) ;
 scalar_t__ public_key_cmp (int ,int const*) ;

__attribute__((used)) static void dht_pk_callback(void *object, int32_t number, const uint8_t *dht_public_key)
{
    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = get_conn(fr_c, number);

    if (!friend_con)
        return;

    if (public_key_cmp(friend_con->dht_temp_pk, dht_public_key) == 0)
        return;

    change_dht_pk(fr_c, number, dht_public_key);


    if (friend_con->crypt_connection_id != -1) {
        crypto_kill(fr_c->net_crypto, friend_con->crypt_connection_id);
        friend_con->crypt_connection_id = -1;
        handle_status(object, number, 0);
    }

    friend_new_connection(fr_c, number);
    onion_set_friend_DHT_pubkey(fr_c->onion_c, friend_con->onion_friendnum, dht_public_key);
}
