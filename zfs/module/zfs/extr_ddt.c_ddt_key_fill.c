
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ ddk_prop; int ddk_cksum; } ;
typedef TYPE_1__ ddt_key_t ;
struct TYPE_15__ {int blk_cksum; } ;
typedef TYPE_2__ blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_COMPRESS (TYPE_2__ const*) ;
 int BP_GET_LSIZE (TYPE_2__ const*) ;
 int BP_GET_PSIZE (TYPE_2__ const*) ;
 scalar_t__ BP_IS_ENCRYPTED (TYPE_2__ const*) ;
 int BP_USES_CRYPT (TYPE_2__ const*) ;
 int DDK_SET_COMPRESS (TYPE_1__*,int ) ;
 int DDK_SET_CRYPT (TYPE_1__*,int ) ;
 int DDK_SET_LSIZE (TYPE_1__*,int ) ;
 int DDK_SET_PSIZE (TYPE_1__*,int ) ;

void
ddt_key_fill(ddt_key_t *ddk, const blkptr_t *bp)
{
 ddk->ddk_cksum = bp->blk_cksum;
 ddk->ddk_prop = 0;

 ASSERT(BP_IS_ENCRYPTED(bp) || !BP_USES_CRYPT(bp));

 DDK_SET_LSIZE(ddk, BP_GET_LSIZE(bp));
 DDK_SET_PSIZE(ddk, BP_GET_PSIZE(bp));
 DDK_SET_COMPRESS(ddk, BP_GET_COMPRESS(bp));
 DDK_SET_CRYPT(ddk, BP_USES_CRYPT(bp));
}
