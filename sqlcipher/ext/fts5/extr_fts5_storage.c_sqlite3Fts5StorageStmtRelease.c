
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {scalar_t__* aStmt; } ;
typedef TYPE_1__ Fts5Storage ;


 int FTS5_STMT_LOOKUP ;
 int FTS5_STMT_SCAN_ASC ;
 int FTS5_STMT_SCAN_DESC ;
 int assert (int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_reset (int *) ;

void sqlite3Fts5StorageStmtRelease(
  Fts5Storage *p,
  int eStmt,
  sqlite3_stmt *pStmt
){
  assert( eStmt==FTS5_STMT_SCAN_ASC
       || eStmt==FTS5_STMT_SCAN_DESC
       || eStmt==FTS5_STMT_LOOKUP
  );
  if( p->aStmt[eStmt]==0 ){
    sqlite3_reset(pStmt);
    p->aStmt[eStmt] = pStmt;
  }else{
    sqlite3_finalize(pStmt);
  }
}
