
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_db ;
typedef int i64 ;
struct TYPE_2__ {int iRet; int bNotOne; int iInUse; } ;
typedef TYPE_1__ FindFreeblockCtx ;


 int findFreeblockCb ;
 int lsmWalkFreelist (int *,int ,int ,void*) ;

__attribute__((used)) static int findFreeblock(lsm_db *pDb, i64 iInUse, int bNotOne, int *piRet){
  int rc;
  FindFreeblockCtx ctx;

  ctx.iInUse = iInUse;
  ctx.iRet = 0;
  ctx.bNotOne = bNotOne;
  rc = lsmWalkFreelist(pDb, 0, findFreeblockCb, (void *)&ctx);
  *piRet = ctx.iRet;

  return rc;
}
