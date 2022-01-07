
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int iCursor; } ;
typedef TYPE_1__ deltaparsevtab_cursor ;


 int SQLITE_OK ;

__attribute__((used)) static int deltaparsevtabRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  deltaparsevtab_cursor *pCur = (deltaparsevtab_cursor*)cur;
  *pRowid = pCur->iCursor;
  return SQLITE_OK;
}
