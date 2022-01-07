
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_4__ {int db; } ;
typedef TYPE_2__ Fts5Index ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 int SQLITE_PREPARE_NO_VTAB ;
 int SQLITE_PREPARE_PERSISTENT ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_prepare_v3 (int ,char*,int,int,int **,int ) ;

__attribute__((used)) static int fts5IndexPrepareStmt(
  Fts5Index *p,
  sqlite3_stmt **ppStmt,
  char *zSql
){
  if( p->rc==SQLITE_OK ){
    if( zSql ){
      p->rc = sqlite3_prepare_v3(p->pConfig->db, zSql, -1,
          SQLITE_PREPARE_PERSISTENT|SQLITE_PREPARE_NO_VTAB,
          ppStmt, 0);
    }else{
      p->rc = SQLITE_NOMEM;
    }
  }
  sqlite3_free(zSql);
  return p->rc;
}
