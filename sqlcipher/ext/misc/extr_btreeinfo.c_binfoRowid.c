
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ BinfoCursor ;


 int SQLITE_OK ;
 int sqlite3_column_int64 (int ,int ) ;

__attribute__((used)) static int binfoRowid(sqlite3_vtab_cursor *pCursor, sqlite_int64 *pRowid){
  BinfoCursor *pCsr = (BinfoCursor *)pCursor;
  *pRowid = sqlite3_column_int64(pCsr->pStmt, 0);
  return SQLITE_OK;
}
