
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_11__ {int nPhrase; double* aIDF; double* aFreq; double avgdl; } ;
struct TYPE_10__ {int (* xPhraseCount ) (int *) ;int (* xRowCount ) (int *,scalar_t__*) ;int (* xColumnTotalSize ) (int *,int,scalar_t__*) ;int (* xQueryPhrase ) (int *,int,void*,int ) ;int (* xSetAuxdata ) (int *,TYPE_2__*,int (*) (TYPE_2__*)) ;TYPE_2__* (* xGetAuxdata ) (int *,int ) ;} ;
typedef TYPE_1__ Fts5ExtensionApi ;
typedef int Fts5Context ;
typedef TYPE_2__ Fts5Bm25Data ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5CountCb ;
 double log (scalar_t__) ;
 int memset (TYPE_2__*,int ,size_t) ;
 int sqlite3_free (TYPE_2__*) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;
 TYPE_2__* stub1 (int *,int ) ;
 int stub2 (int *) ;
 int stub3 (int *,scalar_t__*) ;
 int stub4 (int *,int,scalar_t__*) ;
 int stub5 (int *,int,void*,int ) ;
 int stub6 (int *,TYPE_2__*,int (*) (TYPE_2__*)) ;

__attribute__((used)) static int fts5Bm25GetData(
  const Fts5ExtensionApi *pApi,
  Fts5Context *pFts,
  Fts5Bm25Data **ppData
){
  int rc = SQLITE_OK;
  Fts5Bm25Data *p;

  p = pApi->xGetAuxdata(pFts, 0);
  if( p==0 ){
    int nPhrase;
    sqlite3_int64 nRow = 0;
    sqlite3_int64 nToken = 0;
    sqlite3_int64 nByte;
    int i;


    nPhrase = pApi->xPhraseCount(pFts);
    nByte = sizeof(Fts5Bm25Data) + nPhrase*2*sizeof(double);
    p = (Fts5Bm25Data*)sqlite3_malloc64(nByte);
    if( p==0 ){
      rc = SQLITE_NOMEM;
    }else{
      memset(p, 0, (size_t)nByte);
      p->nPhrase = nPhrase;
      p->aIDF = (double*)&p[1];
      p->aFreq = &p->aIDF[nPhrase];
    }


    if( rc==SQLITE_OK ) rc = pApi->xRowCount(pFts, &nRow);
    assert( rc!=SQLITE_OK || nRow>0 );
    if( rc==SQLITE_OK ) rc = pApi->xColumnTotalSize(pFts, -1, &nToken);
    if( rc==SQLITE_OK ) p->avgdl = (double)nToken / (double)nRow;


    for(i=0; rc==SQLITE_OK && i<nPhrase; i++){
      sqlite3_int64 nHit = 0;
      rc = pApi->xQueryPhrase(pFts, i, (void*)&nHit, fts5CountCb);
      if( rc==SQLITE_OK ){
        double idf = log( (nRow - nHit + 0.5) / (nHit + 0.5) );
        if( idf<=0.0 ) idf = 1e-6;
        p->aIDF[i] = idf;
      }
    }

    if( rc!=SQLITE_OK ){
      sqlite3_free(p);
    }else{
      rc = pApi->xSetAuxdata(pFts, p, sqlite3_free);
    }
    if( rc!=SQLITE_OK ) p = 0;
  }
  *ppData = p;
  return rc;
}
