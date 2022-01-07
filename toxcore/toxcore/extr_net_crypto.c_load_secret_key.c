
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int self_secret_key; int self_public_key; } ;
typedef TYPE_1__ Net_Crypto ;


 int crypto_box_SECRETKEYBYTES ;
 int crypto_scalarmult_curve25519_base (int ,int ) ;
 int memcpy (int ,int const*,int ) ;

void load_secret_key(Net_Crypto *c, const uint8_t *sk)
{
    memcpy(c->self_secret_key, sk, crypto_box_SECRETKEYBYTES);
    crypto_scalarmult_curve25519_base(c->self_public_key, c->self_secret_key);
}
