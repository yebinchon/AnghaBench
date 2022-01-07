
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nData; void* pData; } ;
struct TYPE_8__ {int flags; TYPE_3__ val; TYPE_1__* pDb; int * aTree; } ;
struct TYPE_7__ {int pEnv; } ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_IGNORE_DELETE ;
 int CURSOR_SEEK_EQ ;
 int LSM_OK ;
 int assert (int *) ;
 int * mcursorLocationOk (TYPE_2__*,int) ;
 int multiCursorGetVal (TYPE_2__*,int ,void**,int*) ;
 int sortedBlobSet (int ,TYPE_3__*,void*,int) ;

int lsmMCursorValue(MultiCursor *pCsr, void **ppVal, int *pnVal){
  void *pVal;
  int nVal;
  int rc;
  if( (pCsr->flags & CURSOR_SEEK_EQ) || pCsr->aTree==0 ){
    rc = LSM_OK;
    nVal = pCsr->val.nData;
    pVal = pCsr->val.pData;
  }else{

    assert( pCsr->aTree );
    assert( mcursorLocationOk(pCsr, (pCsr->flags & CURSOR_IGNORE_DELETE)) );

    rc = multiCursorGetVal(pCsr, pCsr->aTree[1], &pVal, &nVal);
    if( pVal && rc==LSM_OK ){
      rc = sortedBlobSet(pCsr->pDb->pEnv, &pCsr->val, pVal, nVal);
      pVal = pCsr->val.pData;
    }

    if( rc!=LSM_OK ){
      pVal = 0;
      nVal = 0;
    }
  }
  *ppVal = pVal;
  *pnVal = nVal;
  return rc;
}
