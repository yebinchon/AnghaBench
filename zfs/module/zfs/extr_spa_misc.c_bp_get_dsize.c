
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_4__ {int * blk_dva; } ;
typedef TYPE_1__ blkptr_t ;


 int BP_GET_NDVAS (TYPE_1__ const*) ;
 int FTAG ;
 int RW_READER ;
 int SCL_VDEV ;
 scalar_t__ dva_get_dsize_sync (int *,int *) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;

uint64_t
bp_get_dsize(spa_t *spa, const blkptr_t *bp)
{
 uint64_t dsize = 0;

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);

 for (int d = 0; d < BP_GET_NDVAS(bp); d++)
  dsize += dva_get_dsize_sync(spa, &bp->blk_dva[d]);

 spa_config_exit(spa, SCL_VDEV, FTAG);

 return (dsize);
}
