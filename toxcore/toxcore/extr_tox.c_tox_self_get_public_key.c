
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* net_crypto; } ;
typedef TYPE_2__ Tox ;
struct TYPE_5__ {int self_public_key; } ;
typedef TYPE_2__ Messenger ;


 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int ,int ) ;

void tox_self_get_public_key(const Tox *tox, uint8_t *public_key)
{
    const Messenger *m = tox;

    if (public_key)
        memcpy(public_key, m->net_crypto->self_public_key, crypto_box_PUBLICKEYBYTES);
}
