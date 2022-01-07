
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {int nToken; int iPos; int iEnd; int iStart; int zToken; int zInput; } ;
typedef TYPE_1__ Fts3tokCursor ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int fts3tokColumnMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *pCtx,
  int iCol
){
  Fts3tokCursor *pCsr = (Fts3tokCursor *)pCursor;


  switch( iCol ){
    case 0:
      sqlite3_result_text(pCtx, pCsr->zInput, -1, SQLITE_TRANSIENT);
      break;
    case 1:
      sqlite3_result_text(pCtx, pCsr->zToken, pCsr->nToken, SQLITE_TRANSIENT);
      break;
    case 2:
      sqlite3_result_int(pCtx, pCsr->iStart);
      break;
    case 3:
      sqlite3_result_int(pCtx, pCsr->iEnd);
      break;
    default:
      assert( iCol==4 );
      sqlite3_result_int(pCtx, pCsr->iPos);
      break;
  }
  return SQLITE_OK;
}
