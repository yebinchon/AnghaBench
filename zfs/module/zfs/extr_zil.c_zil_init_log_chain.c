
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long long* zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
struct TYPE_7__ {int zl_os; } ;
typedef TYPE_2__ zilog_t ;
struct TYPE_8__ {TYPE_1__ blk_cksum; } ;
typedef TYPE_3__ blkptr_t ;


 size_t ZIL_ZC_GUID_0 ;
 size_t ZIL_ZC_GUID_1 ;
 size_t ZIL_ZC_OBJSET ;
 size_t ZIL_ZC_SEQ ;
 unsigned long long dmu_objset_id (int ) ;
 void* spa_get_random (unsigned long long) ;

__attribute__((used)) static void
zil_init_log_chain(zilog_t *zilog, blkptr_t *bp)
{
 zio_cksum_t *zc = &bp->blk_cksum;

 zc->zc_word[ZIL_ZC_GUID_0] = spa_get_random(-1ULL);
 zc->zc_word[ZIL_ZC_GUID_1] = spa_get_random(-1ULL);
 zc->zc_word[ZIL_ZC_OBJSET] = dmu_objset_id(zilog->zl_os);
 zc->zc_word[ZIL_ZC_SEQ] = 1ULL;
}
