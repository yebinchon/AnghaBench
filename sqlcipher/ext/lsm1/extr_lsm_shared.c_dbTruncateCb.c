
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_2__ {int nBlock; scalar_t__ iInUse; } ;
typedef TYPE_1__ DbTruncateCtx ;



__attribute__((used)) static int dbTruncateCb(void *pCtx, int iBlk, i64 iSnapshot){
  DbTruncateCtx *p = (DbTruncateCtx *)pCtx;
  if( iBlk!=p->nBlock || (p->iInUse>=0 && iSnapshot>=p->iInUse) ) return 1;
  p->nBlock--;
  return 0;
}
