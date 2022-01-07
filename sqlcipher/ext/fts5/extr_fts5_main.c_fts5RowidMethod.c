
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_4__ {int ePlan; int pStmt; } ;
typedef TYPE_1__ Fts5Cursor ;


 scalar_t__ CsrFlagTest (TYPE_1__*,int ) ;
 int FTS5CSR_EOF ;




 int SQLITE_OK ;
 int assert (int) ;
 int fts5CursorRowid (TYPE_1__*) ;
 int sqlite3_column_int64 (int ,int ) ;

__attribute__((used)) static int fts5RowidMethod(sqlite3_vtab_cursor *pCursor, sqlite_int64 *pRowid){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCursor;
  int ePlan = pCsr->ePlan;

  assert( CsrFlagTest(pCsr, FTS5CSR_EOF)==0 );
  switch( ePlan ){
    case 128:
      *pRowid = 0;
      break;

    case 129:
    case 131:
    case 130:
      *pRowid = fts5CursorRowid(pCsr);
      break;

    default:
      *pRowid = sqlite3_column_int64(pCsr->pStmt, 0);
      break;
  }

  return SQLITE_OK;
}
