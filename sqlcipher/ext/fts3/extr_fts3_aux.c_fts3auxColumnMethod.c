
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_4__ {char* zTerm; int nTerm; } ;
struct TYPE_6__ {scalar_t__ isEof; size_t iCol; int iLangid; TYPE_2__* aStat; TYPE_1__ csr; } ;
struct TYPE_5__ {int nOcc; int nDoc; } ;
typedef TYPE_3__ Fts3auxCursor ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static int fts3auxColumnMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *pCtx,
  int iCol
){
  Fts3auxCursor *p = (Fts3auxCursor *)pCursor;

  assert( p->isEof==0 );
  switch( iCol ){
    case 0:
      sqlite3_result_text(pCtx, p->csr.zTerm, p->csr.nTerm, SQLITE_TRANSIENT);
      break;

    case 1:
      if( p->iCol ){
        sqlite3_result_int(pCtx, p->iCol-1);
      }else{
        sqlite3_result_text(pCtx, "*", -1, SQLITE_STATIC);
      }
      break;

    case 2:
      sqlite3_result_int64(pCtx, p->aStat[p->iCol].nDoc);
      break;

    case 3:
      sqlite3_result_int64(pCtx, p->aStat[p->iCol].nOcc);
      break;

    default:
      assert( iCol==4 );
      sqlite3_result_int(pCtx, p->iLangid);
      break;
  }

  return SQLITE_OK;
}
