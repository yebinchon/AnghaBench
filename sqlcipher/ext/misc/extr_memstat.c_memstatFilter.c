
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_3__ {scalar_t__ iDb; scalar_t__ iRowid; } ;
typedef TYPE_1__ memstat_cursor ;


 int memstatFindSchemas (TYPE_1__*) ;
 int memstatNext (int *) ;

__attribute__((used)) static int memstatFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  memstat_cursor *pCur = (memstat_cursor *)pVtabCursor;
  int rc = memstatFindSchemas(pCur);
  if( rc ) return rc;
  pCur->iRowid = 0;
  pCur->iDb = 0;
  return memstatNext(pVtabCursor);
}
