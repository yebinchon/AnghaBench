
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int self_public_key; } ;
struct TYPE_10__ {int onion_c; int has_added_relays; TYPE_1__* loaded_relays; int dht; TYPE_7__* net_crypto; int fr; } ;
struct TYPE_9__ {int public_key; int ip_port; } ;
typedef TYPE_1__ Node_format ;
typedef TYPE_2__ Messenger ;


 int DHT_load (int ,int const*,int) ;
 int MAX_NAME_LENGTH ;
 int MAX_STATUSMESSAGE_LENGTH ;
 int NUM_SAVED_PATH_NODES ;
 int NUM_SAVED_TCP_RELAYS ;
 scalar_t__ crypto_box_PUBLICKEYBYTES ;
 scalar_t__ crypto_box_SECRETKEYBYTES ;
 int fprintf (int ,char*,int,int) ;
 int friends_list_load (TYPE_2__*,int const*,int) ;
 int load_secret_key (TYPE_7__*,int const*) ;
 int m_set_statusmessage (TYPE_2__*,int const*,int) ;
 int m_set_userstatus (TYPE_2__*,int const) ;
 int onion_add_bs_path_node (int ,int ,int ) ;
 int public_key_cmp (int const*,int ) ;
 int set_nospam (int *,int) ;
 int setname (TYPE_2__*,int const*,int) ;
 int stderr ;
 int unpack_nodes (TYPE_1__*,int,int ,int const*,int,int) ;

__attribute__((used)) static int messenger_load_state_callback(void *outer, const uint8_t *data, uint32_t length, uint16_t type)
{
    Messenger *m = outer;

    switch (type) {
        case 132:
            if (length == crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES + sizeof(uint32_t)) {
                set_nospam(&(m->fr), *(uint32_t *)data);
                load_secret_key(m->net_crypto, (&data[sizeof(uint32_t)]) + crypto_box_PUBLICKEYBYTES);

                if (public_key_cmp((&data[sizeof(uint32_t)]), m->net_crypto->self_public_key) != 0) {
                    return -1;
                }
            } else
                return -1;

            break;

        case 136:
            DHT_load(m->dht, data, length);
            break;

        case 134:
            friends_list_load(m, data, length);
            break;

        case 133:
            if ((length > 0) && (length <= MAX_NAME_LENGTH)) {
                setname(m, data, length);
            }

            break;

        case 129:
            if ((length > 0) && (length < MAX_STATUSMESSAGE_LENGTH)) {
                m_set_statusmessage(m, data, length);
            }

            break;

        case 130:
            if (length == 1) {
                m_set_userstatus(m, *data);
            }

            break;

        case 128: {
            if (length == 0) {
                break;
            }

            unpack_nodes(m->loaded_relays, NUM_SAVED_TCP_RELAYS, 0, data, length, 1);
            m->has_added_relays = 0;

            break;
        }

        case 131: {
            Node_format nodes[NUM_SAVED_PATH_NODES];

            if (length == 0) {
                break;
            }

            int i, num = unpack_nodes(nodes, NUM_SAVED_PATH_NODES, 0, data, length, 0);

            for (i = 0; i < num; ++i) {
                onion_add_bs_path_node(m->onion_c, nodes[i].ip_port, nodes[i].public_key);
            }

            break;
        }

        case 135: {
            if (length != 0) {
                return -1;
            }

            return -2;
            break;
        }
    }

    return 0;
}
