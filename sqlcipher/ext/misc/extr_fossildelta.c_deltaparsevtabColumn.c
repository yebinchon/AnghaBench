
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {size_t eOp; scalar_t__ nDelta; scalar_t__ aDelta; scalar_t__ a1; scalar_t__ a2; } ;
typedef TYPE_1__ deltaparsevtab_cursor ;






 size_t DELTAPARSE_OP_COPY ;
 size_t DELTAPARSE_OP_INSERT ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int * azOp ;
 int sqlite3_result_blob (int *,scalar_t__,scalar_t__,int ) ;
 int sqlite3_result_int (int *,scalar_t__) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int deltaparsevtabColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  deltaparsevtab_cursor *pCur = (deltaparsevtab_cursor*)cur;
  switch( i ){
    case 128: {
      sqlite3_result_text(ctx, azOp[pCur->eOp], -1, SQLITE_STATIC);
      break;
    }
    case 131: {
      sqlite3_result_int(ctx, pCur->a1);
      break;
    }
    case 130: {
      if( pCur->eOp==DELTAPARSE_OP_COPY ){
        sqlite3_result_int(ctx, pCur->a2);
      }else if( pCur->eOp==DELTAPARSE_OP_INSERT ){
        sqlite3_result_blob(ctx, pCur->aDelta+pCur->a2, pCur->a1,
                            SQLITE_TRANSIENT);
      }
      break;
    }
    case 129: {
      sqlite3_result_blob(ctx, pCur->aDelta, pCur->nDelta, SQLITE_TRANSIENT);
      break;
    }
  }
  return SQLITE_OK;
}
