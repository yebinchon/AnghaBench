
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
struct TYPE_12__ {scalar_t__ pVtab; } ;
struct TYPE_14__ {int pDeferred; int * pExpr; int iPrevId; TYPE_1__ base; } ;
struct TYPE_13__ {char flag; int* aMatchinfo; int nPhrase; int nCol; int nDoc; } ;
typedef TYPE_2__ MatchInfo ;
typedef int Fts3Table ;
typedef int Fts3Expr ;
typedef TYPE_3__ Fts3Cursor ;



 char const FTS3_MATCHINFO_HITS ;







 int SQLITE_OK ;
 int assert (int) ;
 int fts3ExprGlobalHitsCb ;
 int fts3ExprIterate (int *,int ,void*) ;
 int fts3ExprLHitGather (int *,TYPE_2__*) ;
 int fts3ExprLoadDoclists (TYPE_3__*,int ,int ) ;
 int fts3ExprLocalHitsCb ;
 int fts3MatchinfoLcs (TYPE_3__*,TYPE_2__*) ;
 int fts3MatchinfoSelectDoctotal (int *,int **,int*,char const**) ;
 int fts3MatchinfoSize (TYPE_2__*,char const) ;
 int memset (int*,int ,size_t) ;
 int sqlite3Fts3EvalTestDeferred (TYPE_3__*,int*) ;
 int sqlite3Fts3GetVarint (char const*,int*) ;
 int sqlite3Fts3SelectDocsize (int *,int ,int **) ;
 char* sqlite3_column_blob (int *,int ) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static int fts3MatchinfoValues(
  Fts3Cursor *pCsr,
  int bGlobal,
  MatchInfo *pInfo,
  const char *zArg
){
  int rc = SQLITE_OK;
  int i;
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  sqlite3_stmt *pSelect = 0;

  for(i=0; rc==SQLITE_OK && zArg[i]; i++){
    pInfo->flag = zArg[i];
    switch( zArg[i] ){
      case 128:
        if( bGlobal ) pInfo->aMatchinfo[0] = pInfo->nPhrase;
        break;

      case 130:
        if( bGlobal ) pInfo->aMatchinfo[0] = pInfo->nCol;
        break;

      case 129:
        if( bGlobal ){
          sqlite3_int64 nDoc = 0;
          rc = fts3MatchinfoSelectDoctotal(pTab, &pSelect, &nDoc, 0);
          pInfo->aMatchinfo[0] = (u32)nDoc;
        }
        break;

      case 135:
        if( bGlobal ){
          sqlite3_int64 nDoc;
          const char *a;

          rc = fts3MatchinfoSelectDoctotal(pTab, &pSelect, &nDoc, &a);
          if( rc==SQLITE_OK ){
            int iCol;
            for(iCol=0; iCol<pInfo->nCol; iCol++){
              u32 iVal;
              sqlite3_int64 nToken;
              a += sqlite3Fts3GetVarint(a, &nToken);
              iVal = (u32)(((u32)(nToken&0xffffffff)+nDoc/2)/nDoc);
              pInfo->aMatchinfo[iCol] = iVal;
            }
          }
        }
        break;

      case 133: {
        sqlite3_stmt *pSelectDocsize = 0;
        rc = sqlite3Fts3SelectDocsize(pTab, pCsr->iPrevId, &pSelectDocsize);
        if( rc==SQLITE_OK ){
          int iCol;
          const char *a = sqlite3_column_blob(pSelectDocsize, 0);
          for(iCol=0; iCol<pInfo->nCol; iCol++){
            sqlite3_int64 nToken;
            a += sqlite3Fts3GetVarint(a, &nToken);
            pInfo->aMatchinfo[iCol] = (u32)nToken;
          }
        }
        sqlite3_reset(pSelectDocsize);
        break;
      }

      case 134:
        rc = fts3ExprLoadDoclists(pCsr, 0, 0);
        if( rc==SQLITE_OK ){
          rc = fts3MatchinfoLcs(pCsr, pInfo);
        }
        break;

      case 131:
      case 132: {
        size_t nZero = fts3MatchinfoSize(pInfo, zArg[i]) * sizeof(u32);
        memset(pInfo->aMatchinfo, 0, nZero);
        rc = fts3ExprLHitGather(pCsr->pExpr, pInfo);
        break;
      }

      default: {
        Fts3Expr *pExpr;
        assert( zArg[i]==FTS3_MATCHINFO_HITS );
        pExpr = pCsr->pExpr;
        rc = fts3ExprLoadDoclists(pCsr, 0, 0);
        if( rc!=SQLITE_OK ) break;
        if( bGlobal ){
          if( pCsr->pDeferred ){
            rc = fts3MatchinfoSelectDoctotal(pTab, &pSelect, &pInfo->nDoc, 0);
            if( rc!=SQLITE_OK ) break;
          }
          rc = fts3ExprIterate(pExpr, fts3ExprGlobalHitsCb,(void*)pInfo);
          sqlite3Fts3EvalTestDeferred(pCsr, &rc);
          if( rc!=SQLITE_OK ) break;
        }
        (void)fts3ExprIterate(pExpr, fts3ExprLocalHitsCb,(void*)pInfo);
        break;
      }
    }

    pInfo->aMatchinfo += fts3MatchinfoSize(pInfo, zArg[i]);
  }

  sqlite3_reset(pSelect);
  return rc;
}
