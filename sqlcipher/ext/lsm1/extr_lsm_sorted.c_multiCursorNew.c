
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pCsr; int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_6__ {TYPE_1__* pDb; struct TYPE_6__* pNext; } ;
typedef TYPE_2__ MultiCursor ;


 scalar_t__ lsmMallocZeroRc (int ,int,int*) ;

__attribute__((used)) static MultiCursor *multiCursorNew(lsm_db *db, int *pRc){
  MultiCursor *pCsr;
  pCsr = (MultiCursor *)lsmMallocZeroRc(db->pEnv, sizeof(MultiCursor), pRc);
  if( pCsr ){
    pCsr->pNext = db->pCsr;
    db->pCsr = pCsr;
    pCsr->pDb = db;
  }
  return pCsr;
}
