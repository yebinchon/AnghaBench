
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_2__ {int nBlock; scalar_t__* aUsed; } ;
typedef TYPE_1__ CheckFreelistCtx ;


 scalar_t__ INTEGRITY_CHECK_FREE ;
 int assert (int) ;

__attribute__((used)) static int checkFreelistCb(void *pCtx, int iBlk, i64 iSnapshot){
  CheckFreelistCtx *p = (CheckFreelistCtx *)pCtx;

  assert( iBlk>=1 );
  assert( iBlk<=p->nBlock );
  assert( p->aUsed[iBlk-1]==0 );
  p->aUsed[iBlk-1] = INTEGRITY_CHECK_FREE;
  return 0;
}
