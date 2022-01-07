
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * zc_word; } ;
struct TYPE_5__ {TYPE_1__ zec_cksum; } ;
struct TYPE_6__ {TYPE_2__ zc_eck; } ;
typedef TYPE_3__ zil_chain_t ;
typedef int uint8_t ;
typedef int uint64_t ;


 int bcopy (int *,int *,int) ;

void
zio_crypt_decode_mac_zil(const void *data, uint8_t *mac)
{





 const zil_chain_t *zilc = data;

 bcopy(&zilc->zc_eck.zec_cksum.zc_word[2], mac, sizeof (uint64_t));
 bcopy(&zilc->zc_eck.zec_cksum.zc_word[3], mac + sizeof (uint64_t),
     sizeof (uint64_t));
}
