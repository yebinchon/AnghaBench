
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_5__* pUnpacked; } ;
typedef TYPE_3__ VdbeSorter ;
struct TYPE_13__ {TYPE_3__* pSorter; } ;
struct TYPE_16__ {scalar_t__ eCurType; int * pKeyInfo; TYPE_1__ uc; } ;
typedef TYPE_4__ VdbeCursor ;
struct TYPE_17__ {int nField; TYPE_2__* aMem; } ;
typedef TYPE_5__ UnpackedRecord ;
struct TYPE_18__ {int z; int n; } ;
struct TYPE_14__ {int flags; } ;
typedef TYPE_6__ Mem ;
typedef int KeyInfo ;


 scalar_t__ CURTYPE_SORTER ;
 int MEM_Null ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 TYPE_5__* sqlite3VdbeAllocUnpackedRecord (int *) ;
 int sqlite3VdbeRecordCompare (int ,int ,TYPE_5__*) ;
 int sqlite3VdbeRecordUnpack (int *,int,void*,TYPE_5__*) ;
 void* vdbeSorterRowkey (TYPE_3__*,int*) ;

int sqlite3VdbeSorterCompare(
  const VdbeCursor *pCsr,
  Mem *pVal,
  int nKeyCol,
  int *pRes
){
  VdbeSorter *pSorter;
  UnpackedRecord *r2;
  KeyInfo *pKeyInfo;
  int i;
  void *pKey; int nKey;

  assert( pCsr->eCurType==CURTYPE_SORTER );
  pSorter = pCsr->uc.pSorter;
  r2 = pSorter->pUnpacked;
  pKeyInfo = pCsr->pKeyInfo;
  if( r2==0 ){
    r2 = pSorter->pUnpacked = sqlite3VdbeAllocUnpackedRecord(pKeyInfo);
    if( r2==0 ) return SQLITE_NOMEM_BKPT;
    r2->nField = nKeyCol;
  }
  assert( r2->nField==nKeyCol );

  pKey = vdbeSorterRowkey(pSorter, &nKey);
  sqlite3VdbeRecordUnpack(pKeyInfo, nKey, pKey, r2);
  for(i=0; i<nKeyCol; i++){
    if( r2->aMem[i].flags & MEM_Null ){
      *pRes = -1;
      return SQLITE_OK;
    }
  }

  *pRes = sqlite3VdbeRecordCompare(pVal->n, pVal->z, r2);
  return SQLITE_OK;
}
