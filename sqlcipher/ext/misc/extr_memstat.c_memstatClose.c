
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int memstat_cursor ;


 int SQLITE_OK ;
 int memstatClearSchema (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int memstatClose(sqlite3_vtab_cursor *cur){
  memstat_cursor *pCur = (memstat_cursor*)cur;
  memstatClearSchema(pCur);
  sqlite3_free(cur);
  return SQLITE_OK;
}
