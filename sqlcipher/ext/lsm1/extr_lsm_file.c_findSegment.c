
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nRight; int * aRhs; int lhs; struct TYPE_3__* pNext; } ;
typedef int Snapshot ;
typedef int Segment ;
typedef int LsmPgno ;
typedef TYPE_1__ Level ;


 TYPE_1__* lsmDbSnapshotLevel (int *) ;
 int * startsWith (int *,int ) ;

__attribute__((used)) static Segment *findSegment(Snapshot *pWorker, LsmPgno iFirst){
  Level *pLvl;
  Segment *pSeg = 0;

  for(pLvl=lsmDbSnapshotLevel(pWorker); pLvl && pSeg==0; pLvl=pLvl->pNext){
    if( 0==(pSeg = startsWith(&pLvl->lhs, iFirst)) ){
      int i;
      for(i=0; i<pLvl->nRight; i++){
        if( (pSeg = startsWith(&pLvl->aRhs[i], iFirst)) ) break;
      }
    }
  }

  return pSeg;
}
