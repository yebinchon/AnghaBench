
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int blk_prop; } ;
typedef TYPE_1__ blkptr_t ;
struct TYPE_12__ {unsigned long long bab_pad; int bab_prop; int bab_mac; } ;
typedef TYPE_2__ blkptr_auth_buf_t ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 int BP_IS_EMBEDDED (TYPE_1__*) ;
 scalar_t__ BP_IS_HOLE (TYPE_1__*) ;
 scalar_t__ BP_USES_CRYPT (TYPE_1__*) ;
 int LE_64 (int ) ;
 int byteswap_uint64_array (TYPE_1__*,int) ;
 int zio_crypt_bp_zero_nonportable_blkprop (TYPE_1__*,int ) ;
 int zio_crypt_decode_mac_bp (TYPE_1__*,int ) ;

__attribute__((used)) static void
zio_crypt_bp_auth_init(uint64_t version, boolean_t should_bswap, blkptr_t *bp,
    blkptr_auth_buf_t *bab, uint_t *bab_len)
{
 blkptr_t tmpbp = *bp;

 if (should_bswap)
  byteswap_uint64_array(&tmpbp, sizeof (blkptr_t));

 ASSERT(BP_USES_CRYPT(&tmpbp) || BP_IS_HOLE(&tmpbp));
 ASSERT0(BP_IS_EMBEDDED(&tmpbp));

 zio_crypt_decode_mac_bp(&tmpbp, bab->bab_mac);






 zio_crypt_bp_zero_nonportable_blkprop(&tmpbp, version);
 bab->bab_prop = LE_64(tmpbp.blk_prop);
 bab->bab_pad = 0ULL;


 *bab_len = sizeof (blkptr_auth_buf_t);
 if (version == 0)
  *bab_len -= sizeof (uint64_t);
}
