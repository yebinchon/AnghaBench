
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int Fts3tokCursor ;


 int SQLITE_OK ;
 int fts3tokResetCursor (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int fts3tokCloseMethod(sqlite3_vtab_cursor *pCursor){
  Fts3tokCursor *pCsr = (Fts3tokCursor *)pCursor;

  fts3tokResetCursor(pCsr);
  sqlite3_free(pCsr);
  return SQLITE_OK;
}
