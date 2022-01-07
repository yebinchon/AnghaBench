
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_free ;
 scalar_t__ sqlite3_get_auxdata (int *,int ) ;
 int* sqlite3_malloc (int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_set_auxdata (int *,int ,int*,int ) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void counterFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){
  int *pCounter = (int*)sqlite3_get_auxdata(pCtx, 0);
  if( pCounter==0 ){
    pCounter = sqlite3_malloc( sizeof(*pCounter) );
    if( pCounter==0 ){
      sqlite3_result_error_nomem(pCtx);
      return;
    }
    *pCounter = sqlite3_value_int(argv[0]);
    sqlite3_set_auxdata(pCtx, 0, pCounter, sqlite3_free);
  }else{
    ++*pCounter;
  }
  sqlite3_result_int(pCtx, *pCounter);
}
