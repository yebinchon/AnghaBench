
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_3__ {int (* xInstCount ) (int *,int*) ;int (* xInst ) (int *,int,int*,int*,int*) ;int (* xPhraseSize ) (int *,int) ;} ;
typedef TYPE_1__ Fts5ExtensionApi ;
typedef int Fts5Context ;


 int SQLITE_OK ;
 int stub1 (int *,int*) ;
 int stub2 (int *,int,int*,int*,int*) ;
 int stub3 (int *,int) ;

__attribute__((used)) static int fts5SnippetScore(
  const Fts5ExtensionApi *pApi,
  Fts5Context *pFts,
  int nDocsize,
  unsigned char *aSeen,
  int iCol,
  int iPos,
  int nToken,
  int *pnScore,
  int *piPos
){
  int rc;
  int i;
  int ip = 0;
  int ic = 0;
  int iOff = 0;
  int iFirst = -1;
  int nInst;
  int nScore = 0;
  int iLast = 0;
  sqlite3_int64 iEnd = (sqlite3_int64)iPos + nToken;

  rc = pApi->xInstCount(pFts, &nInst);
  for(i=0; i<nInst && rc==SQLITE_OK; i++){
    rc = pApi->xInst(pFts, i, &ip, &ic, &iOff);
    if( rc==SQLITE_OK && ic==iCol && iOff>=iPos && iOff<iEnd ){
      nScore += (aSeen[ip] ? 1 : 1000);
      aSeen[ip] = 1;
      if( iFirst<0 ) iFirst = iOff;
      iLast = iOff + pApi->xPhraseSize(pFts, ip);
    }
  }

  *pnScore = nScore;
  if( piPos ){
    sqlite3_int64 iAdj = iFirst - (nToken - (iLast-iFirst)) / 2;
    if( (iAdj+nToken)>nDocsize ) iAdj = nDocsize - nToken;
    if( iAdj<0 ) iAdj = 0;
    *piPos = (int)iAdj;
  }

  return rc;
}
