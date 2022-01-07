
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int iRowid; } ;
typedef TYPE_1__ Fts3auxCursor ;


 int SQLITE_OK ;

__attribute__((used)) static int fts3auxRowidMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite_int64 *pRowid
){
  Fts3auxCursor *pCsr = (Fts3auxCursor *)pCursor;
  *pRowid = pCsr->iRowid;
  return SQLITE_OK;
}
