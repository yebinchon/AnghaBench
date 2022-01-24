#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int sqlite3_int64 ;
struct TYPE_12__ {scalar_t__ pVtab; } ;
struct TYPE_14__ {int /*<<< orphan*/  pDeferred; int /*<<< orphan*/ * pExpr; int /*<<< orphan*/  iPrevId; TYPE_1__ base; } ;
struct TYPE_13__ {char flag; int* aMatchinfo; int nPhrase; int nCol; int nDoc; } ;
typedef  TYPE_2__ MatchInfo ;
typedef  int /*<<< orphan*/  Fts3Table ;
typedef  int /*<<< orphan*/  Fts3Expr ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
#define  FTS3_MATCHINFO_AVGLENGTH 135 
 char const FTS3_MATCHINFO_HITS ; 
#define  FTS3_MATCHINFO_LCS 134 
#define  FTS3_MATCHINFO_LENGTH 133 
#define  FTS3_MATCHINFO_LHITS 132 
#define  FTS3_MATCHINFO_LHITS_BM 131 
#define  FTS3_MATCHINFO_NCOL 130 
#define  FTS3_MATCHINFO_NDOC 129 
#define  FTS3_MATCHINFO_NPHRASE 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fts3ExprGlobalHitsCb ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fts3ExprLocalHitsCb ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,char const**) ; 
 int FUNC6 (TYPE_2__*,char const) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(
  Fts3Cursor *pCsr,               /* FTS3 cursor object */
  int bGlobal,                    /* True to grab the global stats */
  MatchInfo *pInfo,               /* Matchinfo context object */
  const char *zArg                /* Matchinfo format string */
){
  int rc = SQLITE_OK;
  int i;
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  sqlite3_stmt *pSelect = 0;

  for(i=0; rc==SQLITE_OK && zArg[i]; i++){
    pInfo->flag = zArg[i];
    switch( zArg[i] ){
      case FTS3_MATCHINFO_NPHRASE:
        if( bGlobal ) pInfo->aMatchinfo[0] = pInfo->nPhrase;
        break;

      case FTS3_MATCHINFO_NCOL:
        if( bGlobal ) pInfo->aMatchinfo[0] = pInfo->nCol;
        break;
        
      case FTS3_MATCHINFO_NDOC:
        if( bGlobal ){
          sqlite3_int64 nDoc = 0;
          rc = FUNC5(pTab, &pSelect, &nDoc, 0);
          pInfo->aMatchinfo[0] = (u32)nDoc;
        }
        break;

      case FTS3_MATCHINFO_AVGLENGTH: 
        if( bGlobal ){
          sqlite3_int64 nDoc;     /* Number of rows in table */
          const char *a;          /* Aggregate column length array */

          rc = FUNC5(pTab, &pSelect, &nDoc, &a);
          if( rc==SQLITE_OK ){
            int iCol;
            for(iCol=0; iCol<pInfo->nCol; iCol++){
              u32 iVal;
              sqlite3_int64 nToken;
              a += FUNC9(a, &nToken);
              iVal = (u32)(((u32)(nToken&0xffffffff)+nDoc/2)/nDoc);
              pInfo->aMatchinfo[iCol] = iVal;
            }
          }
        }
        break;

      case FTS3_MATCHINFO_LENGTH: {
        sqlite3_stmt *pSelectDocsize = 0;
        rc = FUNC10(pTab, pCsr->iPrevId, &pSelectDocsize);
        if( rc==SQLITE_OK ){
          int iCol;
          const char *a = FUNC11(pSelectDocsize, 0);
          for(iCol=0; iCol<pInfo->nCol; iCol++){
            sqlite3_int64 nToken;
            a += FUNC9(a, &nToken);
            pInfo->aMatchinfo[iCol] = (u32)nToken;
          }
        }
        FUNC12(pSelectDocsize);
        break;
      }

      case FTS3_MATCHINFO_LCS:
        rc = FUNC3(pCsr, 0, 0);
        if( rc==SQLITE_OK ){
          rc = FUNC4(pCsr, pInfo);
        }
        break;

      case FTS3_MATCHINFO_LHITS_BM:
      case FTS3_MATCHINFO_LHITS: {
        size_t nZero = FUNC6(pInfo, zArg[i]) * sizeof(u32);
        FUNC7(pInfo->aMatchinfo, 0, nZero);
        rc = FUNC2(pCsr->pExpr, pInfo);
        break;
      }

      default: {
        Fts3Expr *pExpr;
        FUNC0( zArg[i]==FTS3_MATCHINFO_HITS );
        pExpr = pCsr->pExpr;
        rc = FUNC3(pCsr, 0, 0);
        if( rc!=SQLITE_OK ) break;
        if( bGlobal ){
          if( pCsr->pDeferred ){
            rc = FUNC5(pTab, &pSelect, &pInfo->nDoc, 0);
            if( rc!=SQLITE_OK ) break;
          }
          rc = FUNC1(pExpr, fts3ExprGlobalHitsCb,(void*)pInfo);
          FUNC8(pCsr, &rc);
          if( rc!=SQLITE_OK ) break;
        }
        (void)FUNC1(pExpr, fts3ExprLocalHitsCb,(void*)pInfo);
        break;
      }
    }

    pInfo->aMatchinfo += FUNC6(pInfo, zArg[i]);
  }

  FUNC12(pSelect);
  return rc;
}