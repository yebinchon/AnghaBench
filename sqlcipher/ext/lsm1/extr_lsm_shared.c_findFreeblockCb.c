
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_2__ {scalar_t__ iInUse; scalar_t__ bNotOne; int iRet; } ;
typedef TYPE_1__ FindFreeblockCtx ;



__attribute__((used)) static int findFreeblockCb(void *pCtx, int iBlk, i64 iSnapshot){
  FindFreeblockCtx *p = (FindFreeblockCtx *)pCtx;
  if( iSnapshot<p->iInUse && (iBlk!=1 || p->bNotOne==0) ){
    p->iRet = iBlk;
    return 1;
  }
  return 0;
}
