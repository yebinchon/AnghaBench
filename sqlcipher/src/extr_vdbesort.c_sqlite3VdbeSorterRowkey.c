
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VdbeSorter ;
struct TYPE_8__ {int * pSorter; } ;
struct TYPE_9__ {scalar_t__ eCurType; TYPE_1__ uc; } ;
typedef TYPE_2__ VdbeCursor ;
struct TYPE_10__ {int n; int z; } ;
typedef TYPE_3__ Mem ;


 scalar_t__ CURTYPE_SORTER ;
 int MEM_Blob ;
 int MemSetTypeFlag (TYPE_3__*,int ) ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (int ,void*,int) ;
 scalar_t__ sqlite3VdbeMemClearAndResize (TYPE_3__*,int) ;
 void* vdbeSorterRowkey (int *,int*) ;

int sqlite3VdbeSorterRowkey(const VdbeCursor *pCsr, Mem *pOut){
  VdbeSorter *pSorter;
  void *pKey; int nKey;

  assert( pCsr->eCurType==CURTYPE_SORTER );
  pSorter = pCsr->uc.pSorter;
  pKey = vdbeSorterRowkey(pSorter, &nKey);
  if( sqlite3VdbeMemClearAndResize(pOut, nKey) ){
    return SQLITE_NOMEM_BKPT;
  }
  pOut->n = nKey;
  MemSetTypeFlag(pOut, MEM_Blob);
  memcpy(pOut->z, pKey, nKey);

  return SQLITE_OK;
}
