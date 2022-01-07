
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_4__ {int ** aStmt; } ;
typedef TYPE_1__ Fts5Storage ;


 int FTS5_STMT_LOOKUP ;
 int FTS5_STMT_SCAN_ASC ;
 int FTS5_STMT_SCAN_DESC ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5StorageGetStmt (TYPE_1__*,int,int **,char**) ;

int sqlite3Fts5StorageStmt(
  Fts5Storage *p,
  int eStmt,
  sqlite3_stmt **pp,
  char **pzErrMsg
){
  int rc;
  assert( eStmt==FTS5_STMT_SCAN_ASC
       || eStmt==FTS5_STMT_SCAN_DESC
       || eStmt==FTS5_STMT_LOOKUP
  );
  rc = fts5StorageGetStmt(p, eStmt, pp, pzErrMsg);
  if( rc==SQLITE_OK ){
    assert( p->aStmt[eStmt]==*pp );
    p->aStmt[eStmt] = 0;
  }
  return rc;
}
