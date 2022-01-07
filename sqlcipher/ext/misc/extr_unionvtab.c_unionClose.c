
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int UnionCsr ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;
 int unionFinalizeCsrStmt (int *) ;

__attribute__((used)) static int unionClose(sqlite3_vtab_cursor *cur){
  UnionCsr *pCsr = (UnionCsr*)cur;
  unionFinalizeCsrStmt(pCsr);
  sqlite3_free(pCsr);
  return SQLITE_OK;
}
