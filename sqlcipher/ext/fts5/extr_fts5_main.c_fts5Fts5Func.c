
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int fts5_api ;
struct TYPE_2__ {int api; } ;
typedef TYPE_1__ Fts5Global ;


 int UNUSED_PARAM (int) ;
 int assert (int) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_pointer (int *,char*) ;

__attribute__((used)) static void fts5Fts5Func(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  Fts5Global *pGlobal = (Fts5Global*)sqlite3_user_data(pCtx);
  fts5_api **ppApi;
  UNUSED_PARAM(nArg);
  assert( nArg==1 );
  ppApi = (fts5_api**)sqlite3_value_pointer(apArg[0], "fts5_api_ptr");
  if( ppApi ) *ppApi = &pGlobal->api;
}
