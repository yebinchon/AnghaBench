
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int data ;
struct TYPE_8__ {int ip; } ;
struct TYPE_7__ {int net; int self_secret_key; int self_public_key; } ;
struct TYPE_6__ {TYPE_3__ ip_port; int public_key; } ;
typedef TYPE_1__ Node_format ;
typedef TYPE_2__ DHT ;


 int CHECK_TYPE_GETNODE_RES ;
 int CRYPTO_PACKET_HARDENING ;
 int MAX_CRYPTO_REQUEST_SIZE ;
 int create_request (int ,int ,int *,int ,int *,int,int ) ;
 int crypto_box_PUBLICKEYBYTES ;
 int ip_isset (int *) ;
 int memcpy (int *,int const*,int) ;
 int sendpacket (int ,TYPE_3__,int *,int) ;

__attribute__((used)) static int send_hardening_getnode_res(const DHT *dht, const Node_format *sendto, const uint8_t *queried_client_id,
                                      const uint8_t *nodes_data, uint16_t nodes_data_length)
{
    if (!ip_isset(&sendto->ip_port.ip))
        return -1;

    uint8_t packet[MAX_CRYPTO_REQUEST_SIZE];
    uint8_t data[1 + crypto_box_PUBLICKEYBYTES + nodes_data_length];
    data[0] = CHECK_TYPE_GETNODE_RES;
    memcpy(data + 1, queried_client_id, crypto_box_PUBLICKEYBYTES);
    memcpy(data + 1 + crypto_box_PUBLICKEYBYTES, nodes_data, nodes_data_length);
    int len = create_request(dht->self_public_key, dht->self_secret_key, packet, sendto->public_key, data,
                             sizeof(data), CRYPTO_PACKET_HARDENING);

    if (len == -1)
        return -1;

    return sendpacket(dht->net, sendto->ip_port, packet, len);
}
