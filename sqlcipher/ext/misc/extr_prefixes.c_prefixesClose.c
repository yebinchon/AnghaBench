
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zStr; } ;
typedef TYPE_1__ prefixes_cursor ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int prefixesClose(sqlite3_vtab_cursor *cur){
  prefixes_cursor *pCur = (prefixes_cursor*)cur;
  sqlite3_free(pCur->zStr);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
