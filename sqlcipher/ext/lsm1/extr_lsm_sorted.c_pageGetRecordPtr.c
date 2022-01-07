
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int LsmPgno ;


 int assert (int) ;
 int lsmVarintGet64 (int *,int *) ;
 int * pageGetCell (int *,int,int) ;
 int pageGetNRec (int *,int) ;

__attribute__((used)) static LsmPgno pageGetRecordPtr(u8 *aData, int nData, int iCell){
  LsmPgno iRet;
  u8 *aCell;

  assert( iCell<pageGetNRec(aData, nData) && iCell>=0 );
  aCell = pageGetCell(aData, nData, iCell);
  lsmVarintGet64(&aCell[1], &iRet);
  return iRet;
}
