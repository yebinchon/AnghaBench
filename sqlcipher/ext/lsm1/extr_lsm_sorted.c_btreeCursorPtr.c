
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int pageGetNRec (int *,int) ;
 scalar_t__ pageGetPtr (int *,int) ;
 scalar_t__ pageGetRecordPtr (int *,int,int) ;

__attribute__((used)) static int btreeCursorPtr(u8 *aData, int nData, int iCell){
  int nCell;

  nCell = pageGetNRec(aData, nData);
  if( iCell>=nCell ){
    return (int)pageGetPtr(aData, nData);
  }
  return (int)pageGetRecordPtr(aData, nData, iCell);
}
