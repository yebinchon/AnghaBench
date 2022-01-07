
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pCompress; } ;
struct TYPE_8__ {scalar_t__ iPg; scalar_t__ nCompress; TYPE_5__* pFS; } ;
struct TYPE_7__ {scalar_t__ iLastPg; } ;
typedef TYPE_1__ Segment ;
typedef TYPE_2__ Page ;
typedef scalar_t__ LsmPgno ;


 int LSM_OK ;
 int fsNextPageOffset (TYPE_5__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*) ;

int lsmFsDbPageIsLast(Segment *pSeg, Page *pPg){
  if( pPg->pFS->pCompress ){
    LsmPgno iNext = 0;
    int rc;
    rc = fsNextPageOffset(pPg->pFS, pSeg, pPg->iPg, pPg->nCompress+6, &iNext);
    return (rc!=LSM_OK || iNext==0);
  }
  return (pPg->iPg==pSeg->iLastPg);
}
