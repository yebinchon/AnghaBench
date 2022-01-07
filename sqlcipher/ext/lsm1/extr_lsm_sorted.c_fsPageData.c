
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct FilePage {int nData; int * aData; } ;
typedef int Page ;



__attribute__((used)) static u8 *fsPageData(Page *pPg, int *pnData){
  *pnData = ((struct FilePage *)(pPg))->nData;
  return ((struct FilePage *)(pPg))->aData;
}
