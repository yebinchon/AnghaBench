
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_3__ {int bErr; int bStatic; char* zBuf; scalar_t__ nUsed; } ;
typedef TYPE_1__ JsonString ;


 int JSON_SUBTYPE ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int jsonAppendChar (TYPE_1__*,char) ;
 scalar_t__ sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_free ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_subtype (int *,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static void jsonObjectCompute(sqlite3_context *ctx, int isFinal){
  JsonString *pStr;
  pStr = (JsonString*)sqlite3_aggregate_context(ctx, 0);
  if( pStr ){
    jsonAppendChar(pStr, '}');
    if( pStr->bErr ){
      if( pStr->bErr==1 ) sqlite3_result_error_nomem(ctx);
      assert( pStr->bStatic );
    }else if( isFinal ){
      sqlite3_result_text(ctx, pStr->zBuf, (int)pStr->nUsed,
                          pStr->bStatic ? SQLITE_TRANSIENT : sqlite3_free);
      pStr->bStatic = 1;
    }else{
      sqlite3_result_text(ctx, pStr->zBuf, (int)pStr->nUsed, SQLITE_TRANSIENT);
      pStr->nUsed--;
    }
  }else{
    sqlite3_result_text(ctx, "{}", 2, SQLITE_STATIC);
  }
  sqlite3_result_subtype(ctx, JSON_SUBTYPE);
}
