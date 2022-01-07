
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
typedef int uint64_t ;
typedef int abd_t ;


 void* BSWAP_64 (void*) ;
 int abd_checksum_edonr_native (int *,int ,void const*,TYPE_1__*) ;

void
abd_checksum_edonr_byteswap(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 zio_cksum_t tmp;

 abd_checksum_edonr_native(abd, size, ctx_template, &tmp);
 zcp->zc_word[0] = BSWAP_64(zcp->zc_word[0]);
 zcp->zc_word[1] = BSWAP_64(zcp->zc_word[1]);
 zcp->zc_word[2] = BSWAP_64(zcp->zc_word[2]);
 zcp->zc_word[3] = BSWAP_64(zcp->zc_word[3]);
}
