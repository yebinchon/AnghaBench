
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; int nPhaseOneStep; int zErrmsg; int dbRbu; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_UTF8 ;
 void* prepareAndCollectError (int ,int **,int *,char*) ;
 int rbuIndexCntFunc ;
 int sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_create_function (int ,char*,int,int ,void*,int ,int ,int ) ;
 void* sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void rbuInitPhaseOneSteps(sqlite3rbu *p){
  if( p->rc==SQLITE_OK ){
    sqlite3_stmt *pStmt = 0;
    int bExists = 0;

    p->nPhaseOneStep = -1;

    p->rc = sqlite3_create_function(p->dbRbu,
        "rbu_index_cnt", 1, SQLITE_UTF8, (void*)p, rbuIndexCntFunc, 0, 0
    );



    if( p->rc==SQLITE_OK ){
      p->rc = prepareAndCollectError(p->dbRbu, &pStmt, &p->zErrmsg,
          "SELECT 1 FROM sqlite_master WHERE tbl_name = 'rbu_count'"
      );
    }
    if( p->rc==SQLITE_OK ){
      if( SQLITE_ROW==sqlite3_step(pStmt) ){
        bExists = 1;
      }
      p->rc = sqlite3_finalize(pStmt);
    }

    if( p->rc==SQLITE_OK && bExists ){
      p->rc = prepareAndCollectError(p->dbRbu, &pStmt, &p->zErrmsg,
          "SELECT sum(cnt * (1 + rbu_index_cnt(rbu_target_name(tbl))))"
          "FROM rbu_count"
      );
      if( p->rc==SQLITE_OK ){
        if( SQLITE_ROW==sqlite3_step(pStmt) ){
          p->nPhaseOneStep = sqlite3_column_int64(pStmt, 0);
        }
        p->rc = sqlite3_finalize(pStmt);
      }
    }
  }
}
