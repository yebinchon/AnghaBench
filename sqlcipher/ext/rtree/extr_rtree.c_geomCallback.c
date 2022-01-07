
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_5__ {int iSize; int nParam; scalar_t__* apSqlParam; int * aParam; int cb; } ;
typedef TYPE_1__ RtreeMatchArg ;
typedef int RtreeGeomCallback ;
typedef int RtreeDValue ;


 int rtreeMatchArgFree (TYPE_1__*) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_pointer (int *,TYPE_1__*,char*,int (*) (TYPE_1__*)) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_double (int *) ;
 int * sqlite3_value_dup (int *) ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static void geomCallback(sqlite3_context *ctx, int nArg, sqlite3_value **aArg){
  RtreeGeomCallback *pGeomCtx = (RtreeGeomCallback *)sqlite3_user_data(ctx);
  RtreeMatchArg *pBlob;
  sqlite3_int64 nBlob;
  int memErr = 0;

  nBlob = sizeof(RtreeMatchArg) + (nArg-1)*sizeof(RtreeDValue)
           + nArg*sizeof(sqlite3_value*);
  pBlob = (RtreeMatchArg *)sqlite3_malloc64(nBlob);
  if( !pBlob ){
    sqlite3_result_error_nomem(ctx);
  }else{
    int i;
    pBlob->iSize = nBlob;
    pBlob->cb = pGeomCtx[0];
    pBlob->apSqlParam = (sqlite3_value**)&pBlob->aParam[nArg];
    pBlob->nParam = nArg;
    for(i=0; i<nArg; i++){
      pBlob->apSqlParam[i] = sqlite3_value_dup(aArg[i]);
      if( pBlob->apSqlParam[i]==0 ) memErr = 1;



      pBlob->aParam[i] = sqlite3_value_double(aArg[i]);

    }
    if( memErr ){
      sqlite3_result_error_nomem(ctx);
      rtreeMatchArgFree(pBlob);
    }else{
      sqlite3_result_pointer(ctx, pBlob, "RtreeMatchArg", rtreeMatchArgFree);
    }
  }
}
