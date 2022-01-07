
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_5__ {int nPtr; scalar_t__ pBtCsr; scalar_t__* apTreeCsr; int * pSystemVal; int * aTree; scalar_t__ nTree; int * aPtr; TYPE_1__* pDb; } ;
struct TYPE_4__ {int * pEnv; } ;
typedef TYPE_2__ MultiCursor ;


 int btreeCursorFree (scalar_t__) ;
 int lsmFree (int *,int *) ;
 int lsmTreeCursorDestroy (scalar_t__) ;
 int segmentPtrReset (int *,int ) ;

__attribute__((used)) static void mcursorFreeComponents(MultiCursor *pCsr){
  int i;
  lsm_env *pEnv = pCsr->pDb->pEnv;


  lsmTreeCursorDestroy(pCsr->apTreeCsr[0]);
  lsmTreeCursorDestroy(pCsr->apTreeCsr[1]);


  for(i=0; i<pCsr->nPtr; i++){
    segmentPtrReset(&pCsr->aPtr[i], 0);
  }


  btreeCursorFree(pCsr->pBtCsr);


  lsmFree(pEnv, pCsr->aPtr);
  lsmFree(pEnv, pCsr->aTree);
  lsmFree(pEnv, pCsr->pSystemVal);


  pCsr->nPtr = 0;
  pCsr->aPtr = 0;
  pCsr->nTree = 0;
  pCsr->aTree = 0;
  pCsr->pSystemVal = 0;
  pCsr->apTreeCsr[0] = 0;
  pCsr->apTreeCsr[1] = 0;
  pCsr->pBtCsr = 0;
}
