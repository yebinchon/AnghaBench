
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_2__ {int nMaxFrame; int eMode; } ;
typedef TYPE_1__ CheckpointStarvationCtx ;


 int CHECKPOINT_STARVATION_FRAMELIMIT ;
 int SQLITE_OK ;
 int sqlite3_wal_checkpoint_v2 (int *,char const*,int ,int ,int ) ;

__attribute__((used)) static int checkpoint_starvation_walhook(
  void *pCtx,
  sqlite3 *db,
  const char *zDb,
  int nFrame
){
  CheckpointStarvationCtx *p = (CheckpointStarvationCtx *)pCtx;
  if( nFrame>p->nMaxFrame ){
    p->nMaxFrame = nFrame;
  }
  if( nFrame>=CHECKPOINT_STARVATION_FRAMELIMIT ){
    sqlite3_wal_checkpoint_v2(db, zDb, p->eMode, 0, 0);
  }
  return SQLITE_OK;
}
