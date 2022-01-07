
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int hash_t ;
struct TYPE_3__ {int candidates_bucket_size; } ;
typedef TYPE_1__ Assoc ;


 int crypto_box_PUBLICKEYBYTES ;

__attribute__((used)) static hash_t id_hash(const Assoc *assoc, const uint8_t *id)
{
    uint32_t i, res = 0x19a64e82;

    for (i = 0; i < crypto_box_PUBLICKEYBYTES; i++)
        res = ((res << 1) ^ id[i]) + (res >> 31);



    if (!(res % assoc->candidates_bucket_size))
        res++;

    return res;
}
