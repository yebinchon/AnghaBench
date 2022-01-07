
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_2__ {scalar_t__ iRowid; } ;
typedef TYPE_1__ Fts3tokCursor ;


 int SQLITE_OK ;

__attribute__((used)) static int fts3tokRowidMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite_int64 *pRowid
){
  Fts3tokCursor *pCsr = (Fts3tokCursor *)pCursor;
  *pRowid = (sqlite3_int64)pCsr->iRowid;
  return SQLITE_OK;
}
