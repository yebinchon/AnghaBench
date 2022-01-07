
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int nData; int * aData; } ;
typedef TYPE_1__ Page ;



u8 *lsmFsPageData(Page *pPage, int *pnData){
  if( pnData ){
    *pnData = pPage->nData;
  }
  return pPage->aData;
}
