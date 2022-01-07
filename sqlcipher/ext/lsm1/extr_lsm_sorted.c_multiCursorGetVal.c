
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int TreeCursor ;
struct TYPE_13__ {int iFree; int nPtr; TYPE_5__* aPtr; scalar_t__ pSystemVal; TYPE_1__* pDb; int ** apTreeCsr; } ;
struct TYPE_12__ {int nVal; void* pVal; int pPg; } ;
struct TYPE_10__ {int nEntry; TYPE_2__* aEntry; } ;
struct TYPE_11__ {TYPE_3__ freelist; } ;
struct TYPE_9__ {int iId; } ;
struct TYPE_8__ {TYPE_4__* pWorker; } ;
typedef TYPE_4__ Snapshot ;
typedef TYPE_5__ SegmentPtr ;
typedef TYPE_6__ MultiCursor ;


 int CURSOR_DATA_SEGMENT ;



 int LSM_OK ;
 int assert (int) ;
 int lsmPutU64 (int *,int ) ;
 int lsmTreeCursorValid (int *) ;
 int lsmTreeCursorValue (int *,void**,int*) ;

__attribute__((used)) static int multiCursorGetVal(
  MultiCursor *pCsr,
  int iVal,
  void **ppVal,
  int *pnVal
){
  int rc = LSM_OK;

  *ppVal = 0;
  *pnVal = 0;

  switch( iVal ){
    case 129:
    case 128: {
      TreeCursor *pTreeCsr = pCsr->apTreeCsr[iVal-129];
      if( lsmTreeCursorValid(pTreeCsr) ){
        lsmTreeCursorValue(pTreeCsr, ppVal, pnVal);
      }else{
        *ppVal = 0;
        *pnVal = 0;
      }
      break;
    }

    case 130: {
      Snapshot *pWorker = pCsr->pDb->pWorker;
      if( pWorker
       && (pCsr->iFree % 2)==0
       && pCsr->iFree < (pWorker->freelist.nEntry*2)
      ){
        int iEntry = pWorker->freelist.nEntry - 1 - (pCsr->iFree / 2);
        u8 *aVal = &((u8 *)(pCsr->pSystemVal))[4];
        lsmPutU64(aVal, pWorker->freelist.aEntry[iEntry].iId);
        *ppVal = aVal;
        *pnVal = 8;
      }
      break;
    }

    default: {
      int iPtr = iVal-CURSOR_DATA_SEGMENT;
      if( iPtr<pCsr->nPtr ){
        SegmentPtr *pPtr = &pCsr->aPtr[iPtr];
        if( pPtr->pPg ){
          *ppVal = pPtr->pVal;
          *pnVal = pPtr->nVal;
        }
      }
    }
  }

  assert( rc==LSM_OK || (*ppVal==0 && *pnVal==0) );
  return rc;
}
