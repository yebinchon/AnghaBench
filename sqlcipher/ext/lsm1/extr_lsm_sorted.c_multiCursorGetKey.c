
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
typedef int TreeCursor ;
struct TYPE_15__ {int iId; int iBlk; } ;
struct TYPE_14__ {int flags; int iFree; int nPtr; TYPE_5__* aPtr; TYPE_3__* pBtCsr; void* pSystemVal; TYPE_1__* pDb; int ** apTreeCsr; } ;
struct TYPE_13__ {int nKey; int eType; void* pKey; int pPg; } ;
struct TYPE_10__ {int nEntry; TYPE_7__* aEntry; } ;
struct TYPE_12__ {TYPE_2__ freelist; } ;
struct TYPE_11__ {int nKey; int eType; void* pKey; } ;
struct TYPE_9__ {TYPE_4__* pWorker; } ;
typedef TYPE_4__ Snapshot ;
typedef TYPE_5__ SegmentPtr ;
typedef TYPE_6__ MultiCursor ;
typedef TYPE_7__ FreelistEntry ;


 int CURSOR_DATA_SEGMENT ;



 int CURSOR_FLUSH_FREELIST ;
 int LSM_END_DELETE ;
 int LSM_INSERT ;
 int LSM_START_DELETE ;
 int LSM_SYSTEMKEY ;
 int assert (int) ;
 int lsmPutU32 (void*,int ) ;
 int lsmTreeCursorKey (int *,int*,void**,int*) ;
 int lsmTreeCursorValid (int *) ;

__attribute__((used)) static void multiCursorGetKey(
  MultiCursor *pCsr,
  int iKey,
  int *peType,
  void **ppKey,
  int *pnKey
){
  int nKey = 0;
  void *pKey = 0;
  int eType = 0;

  switch( iKey ){
    case 129:
    case 128: {
      TreeCursor *pTreeCsr = pCsr->apTreeCsr[iKey-129];
      if( lsmTreeCursorValid(pTreeCsr) ){
        lsmTreeCursorKey(pTreeCsr, &eType, &pKey, &nKey);
      }
      break;
    }

    case 130: {
      Snapshot *pWorker = pCsr->pDb->pWorker;
      if( pWorker && (pCsr->flags & CURSOR_FLUSH_FREELIST) ){
        int nEntry = pWorker->freelist.nEntry;
        if( pCsr->iFree < (nEntry*2) ){
          FreelistEntry *aEntry = pWorker->freelist.aEntry;
          int i = nEntry - 1 - (pCsr->iFree / 2);
          u32 iKey2 = 0;

          if( (pCsr->iFree % 2) ){
            eType = LSM_END_DELETE|LSM_SYSTEMKEY;
            iKey2 = aEntry[i].iBlk-1;
          }else if( aEntry[i].iId>=0 ){
            eType = LSM_INSERT|LSM_SYSTEMKEY;
            iKey2 = aEntry[i].iBlk;




            if( i<(nEntry-1) && aEntry[i+1].iBlk==iKey2+1 && aEntry[i+1].iId<0 ){
              eType |= LSM_END_DELETE;
            }

          }else{
            eType = LSM_START_DELETE|LSM_SYSTEMKEY;
            iKey2 = aEntry[i].iBlk + 1;
          }




          if( i>0 && aEntry[i-1].iBlk==iKey2-1 && aEntry[i-1].iId<0 ){
            eType |= LSM_START_DELETE;
          }

          pKey = pCsr->pSystemVal;
          nKey = 4;
          lsmPutU32(pKey, ~iKey2);
        }
      }
      break;
    }

    default: {
      int iPtr = iKey - CURSOR_DATA_SEGMENT;
      assert( iPtr>=0 );
      if( iPtr==pCsr->nPtr ){
        if( pCsr->pBtCsr ){
          pKey = pCsr->pBtCsr->pKey;
          nKey = pCsr->pBtCsr->nKey;
          eType = pCsr->pBtCsr->eType;
        }
      }else if( iPtr<pCsr->nPtr ){
        SegmentPtr *pPtr = &pCsr->aPtr[iPtr];
        if( pPtr->pPg ){
          pKey = pPtr->pKey;
          nKey = pPtr->nKey;
          eType = pPtr->eType;
        }
      }
      break;
    }
  }

  if( peType ) *peType = eType;
  if( pnKey ) *pnKey = nKey;
  if( ppKey ) *ppKey = pKey;
}
