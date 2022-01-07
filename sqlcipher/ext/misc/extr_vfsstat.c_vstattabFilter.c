
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_2__ {scalar_t__ i; } ;
typedef TYPE_1__ VfsStatCursor ;


 int SQLITE_OK ;

__attribute__((used)) static int vstattabFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  VfsStatCursor *pCur = (VfsStatCursor*)pVtabCursor;
  pCur->i = 0;
  return SQLITE_OK;
}
