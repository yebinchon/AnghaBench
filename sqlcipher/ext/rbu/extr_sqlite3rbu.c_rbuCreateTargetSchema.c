
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zErrmsg; int dbMain; void* rc; int dbRbu; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;


 void* SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int ) ;
 void* prepareAndCollectError (int ,int **,int *,char*) ;
 int rbuFinalize (TYPE_1__*,int *) ;
 int rbuIsVacuum (TYPE_1__*) ;
 int sqlite3_bind_value (int *,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_column_value (int *,int) ;
 void* sqlite3_exec (int ,char const*,int ,int ,int *) ;
 void* sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void rbuCreateTargetSchema(sqlite3rbu *p){
  sqlite3_stmt *pSql = 0;
  sqlite3_stmt *pInsert = 0;

  assert( rbuIsVacuum(p) );
  p->rc = sqlite3_exec(p->dbMain, "PRAGMA writable_schema=1", 0,0, &p->zErrmsg);
  if( p->rc==SQLITE_OK ){
    p->rc = prepareAndCollectError(p->dbRbu, &pSql, &p->zErrmsg,
      "SELECT sql FROM sqlite_master WHERE sql!='' AND rootpage!=0"
      " AND name!='sqlite_sequence' "
      " ORDER BY type DESC"
    );
  }

  while( p->rc==SQLITE_OK && sqlite3_step(pSql)==SQLITE_ROW ){
    const char *zSql = (const char*)sqlite3_column_text(pSql, 0);
    p->rc = sqlite3_exec(p->dbMain, zSql, 0, 0, &p->zErrmsg);
  }
  rbuFinalize(p, pSql);
  if( p->rc!=SQLITE_OK ) return;

  if( p->rc==SQLITE_OK ){
    p->rc = prepareAndCollectError(p->dbRbu, &pSql, &p->zErrmsg,
        "SELECT * FROM sqlite_master WHERE rootpage=0 OR rootpage IS NULL"
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = prepareAndCollectError(p->dbMain, &pInsert, &p->zErrmsg,
        "INSERT INTO sqlite_master VALUES(?,?,?,?,?)"
    );
  }

  while( p->rc==SQLITE_OK && sqlite3_step(pSql)==SQLITE_ROW ){
    int i;
    for(i=0; i<5; i++){
      sqlite3_bind_value(pInsert, i+1, sqlite3_column_value(pSql, i));
    }
    sqlite3_step(pInsert);
    p->rc = sqlite3_reset(pInsert);
  }
  if( p->rc==SQLITE_OK ){
    p->rc = sqlite3_exec(p->dbMain, "PRAGMA writable_schema=0",0,0,&p->zErrmsg);
  }

  rbuFinalize(p, pSql);
  rbuFinalize(p, pInsert);
}
