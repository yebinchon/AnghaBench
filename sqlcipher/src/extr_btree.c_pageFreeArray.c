
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_9__ {int* szCell; int ** apCell; } ;
struct TYPE_8__ {int hdrOffset; int childPtrSize; TYPE_1__* pBt; int * aData; } ;
struct TYPE_7__ {size_t usableSize; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellArray ;


 scalar_t__ SQLITE_WITHIN (int *,int * const,int * const) ;
 int assert (int) ;
 int freeSpace (TYPE_2__*,int ,int) ;

__attribute__((used)) static int pageFreeArray(
  MemPage *pPg,
  int iFirst,
  int nCell,
  CellArray *pCArray
){
  u8 * const aData = pPg->aData;
  u8 * const pEnd = &aData[pPg->pBt->usableSize];
  u8 * const pStart = &aData[pPg->hdrOffset + 8 + pPg->childPtrSize];
  int nRet = 0;
  int i;
  int iEnd = iFirst + nCell;
  u8 *pFree = 0;
  int szFree = 0;

  for(i=iFirst; i<iEnd; i++){
    u8 *pCell = pCArray->apCell[i];
    if( SQLITE_WITHIN(pCell, pStart, pEnd) ){
      int sz;



      sz = pCArray->szCell[i]; assert( sz>0 );
      if( pFree!=(pCell + sz) ){
        if( pFree ){
          assert( pFree>aData && (pFree - aData)<65536 );
          freeSpace(pPg, (u16)(pFree - aData), szFree);
        }
        pFree = pCell;
        szFree = sz;
        if( pFree+sz>pEnd ) return 0;
      }else{
        pFree = pCell;
        szFree += sz;
      }
      nRet++;
    }
  }
  if( pFree ){
    assert( pFree>aData && (pFree - aData)<65536 );
    freeSpace(pPg, (u16)(pFree - aData), szFree);
  }
  return nRet;
}
