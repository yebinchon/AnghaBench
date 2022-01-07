
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nMerge; int pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_8__ {scalar_t__ iAge; scalar_t__ nRight; } ;
typedef TYPE_2__ Level ;


 scalar_t__ lsmDatabaseFull (TYPE_1__*) ;
 TYPE_2__* lsmDbSnapshotLevel (int ) ;
 scalar_t__ sortedCountLevels (TYPE_2__*) ;

__attribute__((used)) static int sortedDbIsFull(lsm_db *pDb){
  Level *pTop = lsmDbSnapshotLevel(pDb->pWorker);

  if( lsmDatabaseFull(pDb) ) return 1;
  if( pTop && pTop->iAge==0
   && (pTop->nRight || sortedCountLevels(pTop)>=pDb->nMerge)
  ){
    return 1;
  }
  return 0;
}
