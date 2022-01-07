
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int pEnv; int pFS; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_8__ {int nData; scalar_t__ pData; } ;
typedef int Segment ;
typedef int Page ;
typedef int LsmPgno ;
typedef TYPE_2__ LsmBlob ;


 int * fsPageData (int *,int*) ;
 int lsmFsDbPageGet (int ,int *,int ,int **) ;
 int lsmFsPageRelease (int *) ;
 int lsmVarintGet32 (int *,int*) ;
 int lsmVarintGet64 (int *,int *) ;
 int * pageGetCell (int *,int,int) ;
 int pageGetKeyCopy (int ,int *,int *,int ,int*,TYPE_2__*) ;
 scalar_t__ rtIsWrite (int) ;
 int sortedReadData (int *,int *,int,int,void**,TYPE_2__*) ;

__attribute__((used)) static void infoCellDump(
  lsm_db *pDb,
  Segment *pSeg,
  int bIndirect,
  Page *pPg,
  int iCell,
  int *peType,
  int *piPgPtr,
  u8 **paKey, int *pnKey,
  u8 **paVal, int *pnVal,
  LsmBlob *pBlob
){
  u8 *aData; int nData;
  u8 *aKey; int nKey = 0;
  u8 *aVal = 0; int nVal = 0;
  int eType;
  int iPgPtr;
  Page *pRef = 0;
  u8 *aCell;

  aData = fsPageData(pPg, &nData);

  aCell = pageGetCell(aData, nData, iCell);
  eType = *aCell++;
  aCell += lsmVarintGet32(aCell, &iPgPtr);

  if( eType==0 ){
    int dummy;
    LsmPgno iRef;
    aCell += lsmVarintGet64(aCell, &iRef);
    if( bIndirect ){
      lsmFsDbPageGet(pDb->pFS, pSeg, iRef, &pRef);
      pageGetKeyCopy(pDb->pEnv, pSeg, pRef, 0, &dummy, pBlob);
      aKey = (u8 *)pBlob->pData;
      nKey = pBlob->nData;
      lsmFsPageRelease(pRef);
    }else{
      aKey = (u8 *)"<indirect>";
      nKey = 11;
    }
  }else{
    aCell += lsmVarintGet32(aCell, &nKey);
    if( rtIsWrite(eType) ) aCell += lsmVarintGet32(aCell, &nVal);
    sortedReadData(pSeg, pPg, (aCell-aData), nKey+nVal, (void **)&aKey, pBlob);
    aVal = &aKey[nKey];
  }

  if( peType ) *peType = eType;
  if( piPgPtr ) *piPgPtr = iPgPtr;
  if( paKey ) *paKey = aKey;
  if( paVal ) *paVal = aVal;
  if( pnKey ) *pnKey = nKey;
  if( pnVal ) *pnVal = nVal;
}
