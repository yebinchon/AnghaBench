
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_4__ {int nWord; int iLang; TYPE_1__* pCurrent; } ;
typedef TYPE_2__ amatch_cursor ;
struct TYPE_3__ {int rCost; int zWord; } ;






 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int amatchColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  amatch_cursor *pCur = (amatch_cursor*)cur;
  switch( i ){
    case 128: {
      sqlite3_result_text(ctx, pCur->pCurrent->zWord+2, -1, SQLITE_STATIC);
      break;
    }
    case 131: {
      sqlite3_result_int(ctx, pCur->pCurrent->rCost);
      break;
    }
    case 130: {
      sqlite3_result_int(ctx, pCur->iLang);
      break;
    }
    case 129: {
      sqlite3_result_int(ctx, pCur->nWord);
      break;
    }
    default: {
      sqlite3_result_null(ctx);
      break;
    }
  }
  return SQLITE_OK;
}
