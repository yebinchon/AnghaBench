
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_15__ {scalar_t__ status; int shared_key; int sessionsecret_key; int peersessionpublic_key; int recv_nonce; int dht_public_key; } ;
struct TYPE_14__ {int (* new_connection_callback ) (int ,TYPE_1__*) ;int new_connection_callback_object; } ;
struct TYPE_13__ {int * cookie; int dht_public_key; int peersessionpublic_key; int recv_nonce; int public_key; int cookie_length; int source; } ;
typedef TYPE_1__ New_Connection ;
typedef TYPE_2__ Net_Crypto ;
typedef int IP_Port ;
typedef TYPE_3__ Crypto_Connection ;


 int COOKIE_LENGTH ;
 scalar_t__ CRYPTO_CONN_COOKIE_REQUESTING ;
 scalar_t__ CRYPTO_CONN_HANDSHAKE_SENT ;
 scalar_t__ CRYPTO_CONN_NOT_CONFIRMED ;
 int connection_kill (TYPE_2__*,int) ;
 scalar_t__ create_send_handshake (TYPE_2__*,int,int *,int ) ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_connection_add_source (TYPE_2__*,int,int ) ;
 int encrypt_precompute (int ,int ,int ) ;
 int free (int *) ;
 TYPE_3__* get_crypto_connection (TYPE_2__*,int) ;
 int getcryptconnection_id (TYPE_2__*,int ) ;
 scalar_t__ handle_crypto_handshake (TYPE_2__*,int ,int ,int ,int ,int *,int const*,int ,int ) ;
 int * malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ public_key_cmp (int ,int ) ;
 int stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static int handle_new_connection_handshake(Net_Crypto *c, IP_Port source, const uint8_t *data, uint16_t length)
{
    New_Connection n_c;
    n_c.cookie = malloc(COOKIE_LENGTH);

    if (n_c.cookie == ((void*)0))
        return -1;

    n_c.source = source;
    n_c.cookie_length = COOKIE_LENGTH;

    if (handle_crypto_handshake(c, n_c.recv_nonce, n_c.peersessionpublic_key, n_c.public_key, n_c.dht_public_key,
                                n_c.cookie, data, length, 0) != 0) {
        free(n_c.cookie);
        return -1;
    }

    int crypt_connection_id = getcryptconnection_id(c, n_c.public_key);

    if (crypt_connection_id != -1) {
        Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

        if (public_key_cmp(n_c.dht_public_key, conn->dht_public_key) != 0) {
            connection_kill(c, crypt_connection_id);
        } else {
            int ret = -1;

            if (conn && (conn->status == CRYPTO_CONN_COOKIE_REQUESTING || conn->status == CRYPTO_CONN_HANDSHAKE_SENT)) {
                memcpy(conn->recv_nonce, n_c.recv_nonce, crypto_box_NONCEBYTES);
                memcpy(conn->peersessionpublic_key, n_c.peersessionpublic_key, crypto_box_PUBLICKEYBYTES);
                encrypt_precompute(conn->peersessionpublic_key, conn->sessionsecret_key, conn->shared_key);

                crypto_connection_add_source(c, crypt_connection_id, source);

                if (create_send_handshake(c, crypt_connection_id, n_c.cookie, n_c.dht_public_key) == 0) {
                    conn->status = CRYPTO_CONN_NOT_CONFIRMED;
                    ret = 0;
                }
            }

            free(n_c.cookie);
            return ret;
        }
    }

    int ret = c->new_connection_callback(c->new_connection_callback_object, &n_c);
    free(n_c.cookie);
    return ret;
}
