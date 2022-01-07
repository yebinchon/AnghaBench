
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pEnv; TYPE_3__* pCsrCache; TYPE_3__* pCsr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_9__ {int nPtr; int val; int key; struct TYPE_9__* pNext; int * apTreeCsr; TYPE_2__* aPtr; int pBtCsr; TYPE_1__* pDb; } ;
struct TYPE_8__ {scalar_t__ pPg; } ;
typedef TYPE_2__ SegmentPtr ;
typedef TYPE_3__ MultiCursor ;


 int assert (int) ;
 int lsmFree (int ,TYPE_3__*) ;
 int lsmFsPageRelease (scalar_t__) ;
 int lsmTreeCursorReset (int ) ;
 int mcursorFreeComponents (TYPE_3__*) ;
 int sortedBlobFree (int *) ;

void lsmMCursorClose(MultiCursor *pCsr, int bCache){
  if( pCsr ){
    lsm_db *pDb = pCsr->pDb;
    MultiCursor **pp;



    for(pp=&pDb->pCsr; *pp; pp=&((*pp)->pNext)){
      if( *pp==pCsr ){
        *pp = pCsr->pNext;
        break;
      }
    }

    if( bCache ){
      int i;


      assert( !pCsr->pBtCsr );
      for(i=0; i<pCsr->nPtr; i++){
        SegmentPtr *pPtr = &pCsr->aPtr[i];
        lsmFsPageRelease(pPtr->pPg);
        pPtr->pPg = 0;
      }


      lsmTreeCursorReset(pCsr->apTreeCsr[0]);
      lsmTreeCursorReset(pCsr->apTreeCsr[1]);


      pCsr->pNext = pDb->pCsrCache;
      pDb->pCsrCache = pCsr;
    }else{

      sortedBlobFree(&pCsr->key);
      sortedBlobFree(&pCsr->val);


      mcursorFreeComponents(pCsr);


      lsmFree(pDb->pEnv, pCsr);
    }
  }
}
