
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int dva_t ;
struct TYPE_5__ {int * blk_dva; } ;
typedef TYPE_1__ blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_NDVAS (TYPE_1__ const*) ;
 int BP_IS_HOLE (TYPE_1__ const*) ;
 int FTAG ;
 int RW_READER ;
 int SCL_ALLOC ;
 int metaslab_claim_dva (int *,int const*,scalar_t__) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;

int
metaslab_claim(spa_t *spa, const blkptr_t *bp, uint64_t txg)
{
 const dva_t *dva = bp->blk_dva;
 int ndvas = BP_GET_NDVAS(bp);
 int error = 0;

 ASSERT(!BP_IS_HOLE(bp));

 if (txg != 0) {




  if ((error = metaslab_claim(spa, bp, 0)) != 0)
   return (error);
 }

 spa_config_enter(spa, SCL_ALLOC, FTAG, RW_READER);

 for (int d = 0; d < ndvas; d++) {
  error = metaslab_claim_dva(spa, &dva[d], txg);
  if (error != 0)
   break;
 }

 spa_config_exit(spa, SCL_ALLOC, FTAG);

 ASSERT(error == 0 || txg == 0);

 return (error);
}
