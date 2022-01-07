
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int * self_public_key; int * self_secret_key; } ;
struct TYPE_8__ {int * public_key; int ip_port; } ;
struct TYPE_7__ {int node_public_key3; int node_public_key2; int node_public_key1; int ip_port3; int ip_port2; int ip_port1; int public_key3; int shared_key3; int public_key2; int shared_key2; int public_key1; int shared_key1; } ;
typedef TYPE_1__ Onion_Path ;
typedef TYPE_2__ Node_format ;
typedef TYPE_3__ DHT ;


 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int crypto_box_keypair (int *,int *) ;
 int encrypt_precompute (int *,int *,int ) ;
 int memcpy (int ,int *,int) ;

int create_onion_path(const DHT *dht, Onion_Path *new_path, const Node_format *nodes)
{
    if (!new_path || !nodes)
        return -1;

    encrypt_precompute(nodes[0].public_key, dht->self_secret_key, new_path->shared_key1);
    memcpy(new_path->public_key1, dht->self_public_key, crypto_box_PUBLICKEYBYTES);

    uint8_t random_public_key[crypto_box_PUBLICKEYBYTES];
    uint8_t random_secret_key[crypto_box_SECRETKEYBYTES];

    crypto_box_keypair(random_public_key, random_secret_key);
    encrypt_precompute(nodes[1].public_key, random_secret_key, new_path->shared_key2);
    memcpy(new_path->public_key2, random_public_key, crypto_box_PUBLICKEYBYTES);

    crypto_box_keypair(random_public_key, random_secret_key);
    encrypt_precompute(nodes[2].public_key, random_secret_key, new_path->shared_key3);
    memcpy(new_path->public_key3, random_public_key, crypto_box_PUBLICKEYBYTES);

    new_path->ip_port1 = nodes[0].ip_port;
    new_path->ip_port2 = nodes[1].ip_port;
    new_path->ip_port3 = nodes[2].ip_port;

    memcpy(new_path->node_public_key1, nodes[0].public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(new_path->node_public_key2, nodes[1].public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(new_path->node_public_key3, nodes[2].public_key, crypto_box_PUBLICKEYBYTES);

    return 0;
}
