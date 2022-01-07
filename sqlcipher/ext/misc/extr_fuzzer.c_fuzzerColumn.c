
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_3__ {TYPE_2__* pStem; int zBuf; int nBuf; } ;
typedef TYPE_1__ fuzzer_cursor ;
struct TYPE_4__ {int rCostX; } ;


 scalar_t__ SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 scalar_t__ fuzzerRender (TYPE_2__*,int *,int *) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int fuzzerColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  fuzzer_cursor *pCur = (fuzzer_cursor*)cur;
  if( i==0 ){

    if( fuzzerRender(pCur->pStem, &pCur->zBuf, &pCur->nBuf)==SQLITE_NOMEM ){
      return SQLITE_NOMEM;
    }
    sqlite3_result_text(ctx, pCur->zBuf, -1, SQLITE_TRANSIENT);
  }else if( i==1 ){

    sqlite3_result_int(ctx, pCur->pStem->rCostX);
  }else{

    sqlite3_result_null(ctx);
  }
  return SQLITE_OK;
}
