
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sa_family_t ;
struct TYPE_16__ {int self_public_key; TYPE_1__* close_clientlist; } ;
struct TYPE_13__ {scalar_t__ send_nodes_ok; int send_nodes_timestamp; int * send_nodes_pingedid; } ;
struct TYPE_15__ {TYPE_2__ hardening; int ip_port; int timestamp; } ;
struct TYPE_14__ {int * public_key; int ip_port; } ;
struct TYPE_12__ {TYPE_4__ assoc6; TYPE_4__ assoc4; int * public_key; } ;
typedef TYPE_3__ Node_format ;
typedef TYPE_4__ IPPTsPng ;
typedef TYPE_5__ DHT ;


 int AF_INET ;
 int AF_INET6 ;
 int BAD_NODE_TIMEOUT ;
 int HARDENING_INTERVAL ;
 int HARDEN_TIMEOUT ;
 int LCLIENT_LIST ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ id_equal (int *,int *) ;
 int ipport_isset (int *) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memcpy (int *,int *,int ) ;
 TYPE_3__ random_node (TYPE_5__*,int ) ;
 scalar_t__ send_hardening_getnode_req (TYPE_5__*,TYPE_3__*,TYPE_3__*,int ) ;
 int unix_time () ;

void do_hardening(DHT *dht)
{
    uint32_t i;

    for (i = 0; i < LCLIENT_LIST * 2; ++i) {
        IPPTsPng *cur_iptspng;
        sa_family_t sa_family;
        uint8_t *public_key = dht->close_clientlist[i / 2].public_key;

        if (i % 2 == 0) {
            cur_iptspng = &dht->close_clientlist[i / 2].assoc4;
            sa_family = AF_INET;
        } else {
            cur_iptspng = &dht->close_clientlist[i / 2].assoc6;
            sa_family = AF_INET6;
        }

        if (is_timeout(cur_iptspng->timestamp, BAD_NODE_TIMEOUT))
            continue;

        if (cur_iptspng->hardening.send_nodes_ok == 0) {
            if (is_timeout(cur_iptspng->hardening.send_nodes_timestamp, HARDENING_INTERVAL)) {
                Node_format rand_node = random_node(dht, sa_family);

                if (!ipport_isset(&rand_node.ip_port))
                    continue;

                if (id_equal(public_key, rand_node.public_key))
                    continue;

                Node_format to_test;
                to_test.ip_port = cur_iptspng->ip_port;
                memcpy(to_test.public_key, public_key, crypto_box_PUBLICKEYBYTES);


                if (send_hardening_getnode_req(dht, &rand_node, &to_test, dht->self_public_key) > 0) {
                    memcpy(cur_iptspng->hardening.send_nodes_pingedid, rand_node.public_key, crypto_box_PUBLICKEYBYTES);
                    cur_iptspng->hardening.send_nodes_timestamp = unix_time();
                }
            }
        } else {
            if (is_timeout(cur_iptspng->hardening.send_nodes_timestamp, HARDEN_TIMEOUT)) {
                cur_iptspng->hardening.send_nodes_ok = 0;
            }
        }


    }
}
