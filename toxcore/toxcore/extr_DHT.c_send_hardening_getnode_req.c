
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Node_format ;
typedef int DHT ;


 int CHECK_TYPE_GETNODE_REQ ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int *,int) ;
 int send_hardening_req (int *,int *,int ,int *,int) ;

__attribute__((used)) static int send_hardening_getnode_req(DHT *dht, Node_format *dest, Node_format *node_totest, uint8_t *search_id)
{
    uint8_t data[sizeof(Node_format) + crypto_box_PUBLICKEYBYTES];
    memcpy(data, node_totest, sizeof(Node_format));
    memcpy(data + sizeof(Node_format), search_id, crypto_box_PUBLICKEYBYTES);
    return send_hardening_req(dht, dest, CHECK_TYPE_GETNODE_REQ, data, sizeof(Node_format) + crypto_box_PUBLICKEYBYTES);
}
