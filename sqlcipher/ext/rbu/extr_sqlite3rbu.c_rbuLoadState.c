
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {int rc; int zStateDb; int zErrmsg; int dbRbu; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;
struct TYPE_7__ {int eStage; int nRow; void* zDataTbl; void* nPhaseOneStep; void* iOalSz; void* iCookie; void* iWalCksum; void* nProgress; void* zIdx; void* zTbl; } ;
typedef TYPE_2__ RbuState ;


 int RBU_STAGE_CKPT ;
 int RBU_STAGE_MOVE ;
 int RBU_STAGE_OAL ;
 void* SQLITE_CORRUPT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int prepareFreeAndCollectError (int ,int **,int *,int ) ;
 scalar_t__ rbuMalloc (TYPE_1__*,int) ;
 void* rbuStrndup (char*,int*) ;
 int sqlite3_column_int (int *,int) ;
 void* sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_mprintf (char*,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static RbuState *rbuLoadState(sqlite3rbu *p){
  RbuState *pRet = 0;
  sqlite3_stmt *pStmt = 0;
  int rc;
  int rc2;

  pRet = (RbuState*)rbuMalloc(p, sizeof(RbuState));
  if( pRet==0 ) return 0;

  rc = prepareFreeAndCollectError(p->dbRbu, &pStmt, &p->zErrmsg,
      sqlite3_mprintf("SELECT k, v FROM %s.rbu_state", p->zStateDb)
  );
  while( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
    switch( sqlite3_column_int(pStmt, 0) ){
      case 129:
        pRet->eStage = sqlite3_column_int(pStmt, 1);
        if( pRet->eStage!=RBU_STAGE_OAL
         && pRet->eStage!=RBU_STAGE_MOVE
         && pRet->eStage!=RBU_STAGE_CKPT
        ){
          p->rc = SQLITE_CORRUPT;
        }
        break;

      case 128:
        pRet->zTbl = rbuStrndup((char*)sqlite3_column_text(pStmt, 1), &rc);
        break;

      case 134:
        pRet->zIdx = rbuStrndup((char*)sqlite3_column_text(pStmt, 1), &rc);
        break;

      case 130:
        pRet->nRow = sqlite3_column_int(pStmt, 1);
        break;

      case 131:
        pRet->nProgress = sqlite3_column_int64(pStmt, 1);
        break;

      case 137:
        pRet->iWalCksum = sqlite3_column_int64(pStmt, 1);
        break;

      case 136:
        pRet->iCookie = (u32)sqlite3_column_int64(pStmt, 1);
        break;

      case 133:
        pRet->iOalSz = (u32)sqlite3_column_int64(pStmt, 1);
        break;

      case 132:
        pRet->nPhaseOneStep = sqlite3_column_int64(pStmt, 1);
        break;

      case 135:
        pRet->zDataTbl = rbuStrndup((char*)sqlite3_column_text(pStmt, 1), &rc);
        break;

      default:
        rc = SQLITE_CORRUPT;
        break;
    }
  }
  rc2 = sqlite3_finalize(pStmt);
  if( rc==SQLITE_OK ) rc = rc2;

  p->rc = rc;
  return pRet;
}
