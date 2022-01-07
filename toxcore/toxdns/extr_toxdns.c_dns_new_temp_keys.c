
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shared_key; int temp_sk; int server_public_key; int temp_pk; int nonce_start; int nonce; } ;
typedef TYPE_1__ DNS_Object ;


 int crypto_box_keypair (int ,int ) ;
 int encrypt_precompute (int ,int ,int ) ;
 int random_int () ;

__attribute__((used)) static void dns_new_temp_keys(DNS_Object *d)
{
    d->nonce = d->nonce_start = random_int();
    crypto_box_keypair(d->temp_pk, d->temp_sk);
    encrypt_precompute(d->server_public_key, d->temp_sk, d->shared_key);
}
