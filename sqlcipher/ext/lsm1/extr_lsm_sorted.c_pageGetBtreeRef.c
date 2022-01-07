
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int Page ;
typedef scalar_t__ LsmPgno ;


 int assert (int) ;
 scalar_t__* fsPageData (int *,int*) ;
 int lsmVarintGet64 (scalar_t__*,scalar_t__*) ;
 scalar_t__* pageGetCell (scalar_t__*,int,int) ;

__attribute__((used)) static LsmPgno pageGetBtreeRef(Page *pPg, int iKey){
  LsmPgno iRef;
  u8 *aData;
  int nData;
  u8 *aCell;

  aData = fsPageData(pPg, &nData);
  aCell = pageGetCell(aData, nData, iKey);
  assert( aCell[0]==0 );
  aCell++;
  aCell += lsmVarintGet64(aCell, &iRef);
  lsmVarintGet64(aCell, &iRef);
  assert( iRef>0 );
  return iRef;
}
