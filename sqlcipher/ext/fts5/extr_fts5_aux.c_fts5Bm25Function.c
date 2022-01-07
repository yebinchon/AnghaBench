
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_7__ {double* aFreq; int nPhrase; double* aIDF; double const avgdl; } ;
struct TYPE_6__ {int (* xInstCount ) (int *,int*) ;int (* xInst ) (int *,int,int*,int*,int*) ;int (* xColumnSize ) (int *,int,int*) ;} ;
typedef TYPE_1__ Fts5ExtensionApi ;
typedef int Fts5Context ;
typedef TYPE_2__ Fts5Bm25Data ;


 int SQLITE_OK ;
 int fts5Bm25GetData (TYPE_1__ const*,int *,TYPE_2__**) ;
 int memset (double*,int ,int) ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_error_code (int *,int) ;
 double sqlite3_value_double (int *) ;
 int stub1 (int *,int*) ;
 int stub2 (int *,int,int*,int*,int*) ;
 int stub3 (int *,int,int*) ;

__attribute__((used)) static void fts5Bm25Function(
  const Fts5ExtensionApi *pApi,
  Fts5Context *pFts,
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  const double k1 = 1.2;
  const double b = 0.75;
  int rc = SQLITE_OK;
  double score = 0.0;
  Fts5Bm25Data *pData;
  int i;
  int nInst = 0;
  double D = 0.0;
  double *aFreq = 0;



  rc = fts5Bm25GetData(pApi, pFts, &pData);
  if( rc==SQLITE_OK ){
    aFreq = pData->aFreq;
    memset(aFreq, 0, sizeof(double) * pData->nPhrase);
    rc = pApi->xInstCount(pFts, &nInst);
  }
  for(i=0; rc==SQLITE_OK && i<nInst; i++){
    int ip; int ic; int io;
    rc = pApi->xInst(pFts, i, &ip, &ic, &io);
    if( rc==SQLITE_OK ){
      double w = (nVal > ic) ? sqlite3_value_double(apVal[ic]) : 1.0;
      aFreq[ip] += w;
    }
  }


  if( rc==SQLITE_OK ){
    int nTok;
    rc = pApi->xColumnSize(pFts, -1, &nTok);
    D = (double)nTok;
  }


  for(i=0; rc==SQLITE_OK && i<pData->nPhrase; i++){
    score += pData->aIDF[i] * (
      ( aFreq[i] * (k1 + 1.0) ) /
      ( aFreq[i] + k1 * (1 - b + b * D / pData->avgdl) )
    );
  }



  if( rc==SQLITE_OK ){
    sqlite3_result_double(pCtx, -1.0 * score);
  }else{
    sqlite3_result_error_code(pCtx, rc);
  }
}
