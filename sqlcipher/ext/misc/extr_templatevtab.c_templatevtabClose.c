
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int templatevtab_cursor ;
typedef int sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int templatevtabClose(sqlite3_vtab_cursor *cur){
  templatevtab_cursor *pCur = (templatevtab_cursor*)cur;
  sqlite3_free(pCur);
  return SQLITE_OK;
}
