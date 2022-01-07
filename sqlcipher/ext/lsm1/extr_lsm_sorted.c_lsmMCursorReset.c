
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nData; } ;
struct TYPE_5__ {int nPtr; TYPE_1__ key; int * aPtr; int * apTreeCsr; } ;
typedef TYPE_2__ MultiCursor ;


 int LSM_SEGMENTPTR_FREE_THRESHOLD ;
 int lsmTreeCursorReset (int ) ;
 int segmentPtrReset (int *,int ) ;

void lsmMCursorReset(MultiCursor *pCsr){
  int i;
  lsmTreeCursorReset(pCsr->apTreeCsr[0]);
  lsmTreeCursorReset(pCsr->apTreeCsr[1]);
  for(i=0; i<pCsr->nPtr; i++){
    segmentPtrReset(&pCsr->aPtr[i], LSM_SEGMENTPTR_FREE_THRESHOLD);
  }
  pCsr->key.nData = 0;
}
