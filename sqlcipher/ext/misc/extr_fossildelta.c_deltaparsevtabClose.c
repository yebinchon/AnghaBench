
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int deltaparsevtab_cursor ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int deltaparsevtabClose(sqlite3_vtab_cursor *cur){
  deltaparsevtab_cursor *pCur = (deltaparsevtab_cursor*)cur;
  sqlite3_free(pCur);
  return SQLITE_OK;
}
