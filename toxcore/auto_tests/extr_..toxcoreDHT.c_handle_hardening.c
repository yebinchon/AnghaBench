
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int send_nodes_ok; int send_nodes_pingedid; int send_nodes_timestamp; } ;
struct TYPE_18__ {TYPE_2__ hardening; } ;
struct TYPE_14__ {int family; } ;
struct TYPE_17__ {TYPE_1__ ip; } ;
struct TYPE_16__ {TYPE_4__ ip_port; struct TYPE_16__* public_key; } ;
typedef TYPE_3__ Node_format ;
typedef TYPE_4__ IP_Port ;
typedef TYPE_5__ IPPTsPng ;
typedef int DHT ;




 int HARDENING_INTERVAL ;
 int HARDREQ_DATA_SIZE ;
 int MAX_SENT_NODES ;
 int crypto_box_PUBLICKEYBYTES ;
 TYPE_5__* get_closelist_IPPTsPng (int *,int const*,int ) ;
 int getnodes (int *,TYPE_4__,TYPE_3__*,int const*,TYPE_3__*) ;
 int have_nodes_closelist (int *,TYPE_3__*,int) ;
 int is_timeout (int ,int ) ;
 int memcpy (TYPE_3__*,int const*,int) ;
 int public_key_cmp (int ,int const*) ;
 int unpack_nodes (TYPE_3__*,int,int ,int const*,int,int ) ;

__attribute__((used)) static int handle_hardening(void *object, IP_Port source, const uint8_t *source_pubkey, const uint8_t *packet,
                            uint16_t length)
{
    DHT *dht = object;

    if (length < 2) {
        return 1;
    }

    switch (packet[0]) {
        case 129: {
            if (length != HARDREQ_DATA_SIZE)
                return 1;

            Node_format node, tocheck_node;
            node.ip_port = source;
            memcpy(node.public_key, source_pubkey, crypto_box_PUBLICKEYBYTES);
            memcpy(&tocheck_node, packet + 1, sizeof(Node_format));

            if (getnodes(dht, tocheck_node.ip_port, tocheck_node.public_key, packet + 1 + sizeof(Node_format), &node) == -1)
                return 1;

            return 0;
        }

        case 128: {
            if (length <= crypto_box_PUBLICKEYBYTES + 1)
                return 1;

            if (length > 1 + crypto_box_PUBLICKEYBYTES + sizeof(Node_format) * MAX_SENT_NODES)
                return 1;

            uint16_t length_nodes = length - 1 - crypto_box_PUBLICKEYBYTES;
            Node_format nodes[MAX_SENT_NODES];
            int num_nodes = unpack_nodes(nodes, MAX_SENT_NODES, 0, packet + 1 + crypto_box_PUBLICKEYBYTES, length_nodes, 0);



            if (num_nodes <= 0)
                return 1;


            if (have_nodes_closelist(dht, nodes, num_nodes) < (uint32_t)((num_nodes + 2) / 2))
                return 1;

            IPPTsPng *temp = get_closelist_IPPTsPng(dht, packet + 1, nodes[0].ip_port.ip.family);

            if (temp == ((void*)0))
                return 1;

            if (is_timeout(temp->hardening.send_nodes_timestamp, HARDENING_INTERVAL))
                return 1;

            if (public_key_cmp(temp->hardening.send_nodes_pingedid, source_pubkey) != 0)
                return 1;


            temp->hardening.send_nodes_ok = 1;
            return 0;
        }
    }

    return 1;
}
