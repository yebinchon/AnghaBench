
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int flags; struct TYPE_12__* pNext; scalar_t__ nRight; } ;
struct TYPE_11__ {TYPE_1__* pDb; int aPtr; } ;
struct TYPE_10__ {TYPE_4__* pLevel; } ;
struct TYPE_9__ {int pEnv; } ;
typedef TYPE_2__ Snapshot ;
typedef int SegmentPtr ;
typedef TYPE_3__ MultiCursor ;
typedef TYPE_4__ Level ;


 int LEVEL_INCOMPLETE ;
 int LSM_OK ;
 int assert (int) ;
 int lsmMallocZeroRc (int ,int,int*) ;
 int multiCursorAddOne (TYPE_3__*,TYPE_4__*,int*) ;

__attribute__((used)) static int multiCursorAddAll(MultiCursor *pCsr, Snapshot *pSnap){
  Level *pLvl;
  int nPtr = 0;
  int rc = LSM_OK;

  for(pLvl=pSnap->pLevel; pLvl; pLvl=pLvl->pNext){





    if( pLvl->flags & LEVEL_INCOMPLETE ) continue;
    nPtr += (1 + pLvl->nRight);
  }

  assert( pCsr->aPtr==0 );
  pCsr->aPtr = lsmMallocZeroRc(pCsr->pDb->pEnv, sizeof(SegmentPtr) * nPtr, &rc);

  for(pLvl=pSnap->pLevel; pLvl; pLvl=pLvl->pNext){
    if( (pLvl->flags & LEVEL_INCOMPLETE)==0 ){
      multiCursorAddOne(pCsr, pLvl, &rc);
    }
  }

  return rc;
}
