
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ iOldLog; } ;
struct TYPE_10__ {TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_12__ {int * apTreeCsr; TYPE_2__* pDb; } ;
struct TYPE_11__ {scalar_t__ iLogOff; } ;
typedef TYPE_3__ Snapshot ;
typedef TYPE_4__ MultiCursor ;


 int LSM_OK ;
 int TREE_BOTH ;
 int TREE_NONE ;
 int lsmTreeCursorNew (TYPE_2__*,int,int *) ;
 scalar_t__ lsmTreeHasOld (TYPE_2__*) ;

__attribute__((used)) static int multiCursorAddTree(MultiCursor *pCsr, Snapshot *pSnap, int eTree){
  int rc = LSM_OK;
  lsm_db *db = pCsr->pDb;


  if( eTree!=TREE_NONE
   && lsmTreeHasOld(db)
   && db->treehdr.iOldLog!=pSnap->iLogOff
  ){
    rc = lsmTreeCursorNew(db, 1, &pCsr->apTreeCsr[1]);
  }


  if( rc==LSM_OK && eTree==TREE_BOTH ){
    rc = lsmTreeCursorNew(db, 0, &pCsr->apTreeCsr[0]);
  }

  return rc;
}
