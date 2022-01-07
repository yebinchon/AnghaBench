
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ port; int ip; } ;
struct TYPE_10__ {scalar_t__ family; } ;
struct TYPE_12__ {TYPE_1__ ip; } ;
struct TYPE_13__ {scalar_t__ ret_timestamp; TYPE_2__ ret_ip_port; int timestamp; TYPE_3__ ip_port; } ;
struct TYPE_15__ {int public_key; TYPE_4__ assoc4; TYPE_4__ assoc6; } ;
struct TYPE_14__ {TYPE_6__* close_clientlist; int self_public_key; } ;
typedef TYPE_3__ IP_Port ;
typedef TYPE_4__ IPPTsPng ;
typedef TYPE_5__ DHT ;
typedef TYPE_6__ Client_data ;


 scalar_t__ AF_INET ;
 int BAD_NODE_TIMEOUT ;
 unsigned int LCLIENT_LENGTH ;
 unsigned int LCLIENT_NODES ;
 unsigned int bit_by_bit_cmp (int const*,int ) ;
 int id_copy (int ,int const*) ;
 int ip_reset (int *) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int unix_time () ;

__attribute__((used)) static int add_to_close(DHT *dht, const uint8_t *public_key, IP_Port ip_port, _Bool simulate)
{
    unsigned int i;

    unsigned int index = bit_by_bit_cmp(public_key, dht->self_public_key);

    if (index > LCLIENT_LENGTH)
        index = LCLIENT_LENGTH - 1;

    for (i = 0; i < LCLIENT_NODES; ++i) {
        Client_data *client = &dht->close_clientlist[(index * LCLIENT_NODES) + i];

        if (is_timeout(client->assoc4.timestamp, BAD_NODE_TIMEOUT) && is_timeout(client->assoc6.timestamp, BAD_NODE_TIMEOUT)) {
            if (!simulate) {
                IPPTsPng *ipptp_write = ((void*)0);
                IPPTsPng *ipptp_clear = ((void*)0);

                if (ip_port.ip.family == AF_INET) {
                    ipptp_write = &client->assoc4;
                    ipptp_clear = &client->assoc6;
                } else {
                    ipptp_write = &client->assoc6;
                    ipptp_clear = &client->assoc4;
                }

                id_copy(client->public_key, public_key);
                ipptp_write->ip_port = ip_port;
                ipptp_write->timestamp = unix_time();

                ip_reset(&ipptp_write->ret_ip_port.ip);
                ipptp_write->ret_ip_port.port = 0;
                ipptp_write->ret_timestamp = 0;


                memset(ipptp_clear, 0, sizeof(*ipptp_clear));
            }

            return 0;
        }
    }

    return -1;
}
