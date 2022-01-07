
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * aData; TYPE_1__* pFS; } ;
struct TYPE_4__ {int nMetaRwSize; } ;
typedef TYPE_2__ MetaPage ;



u8 *lsmFsMetaPageData(MetaPage *pPg, int *pnData){
  if( pnData ) *pnData = pPg->pFS->nMetaRwSize;
  return pPg->aData;
}
