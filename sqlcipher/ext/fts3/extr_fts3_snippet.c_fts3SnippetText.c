
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_11__ {int (* xNext ) (int *,char const**,int*,int*,int*,int*) ;int (* xClose ) (int *) ;} ;
typedef TYPE_2__ sqlite3_tokenizer_module ;
typedef int sqlite3_tokenizer_cursor ;
struct TYPE_15__ {scalar_t__ pModule; } ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_14__ {int iLangid; int pStmt; TYPE_1__ base; } ;
struct TYPE_13__ {TYPE_6__* pTokenizer; } ;
struct TYPE_12__ {int iPos; int hlmask; int iCol; } ;
typedef int StrBuffer ;
typedef TYPE_3__ SnippetFragment ;
typedef TYPE_4__ Fts3Table ;
typedef TYPE_5__ Fts3Cursor ;


 int SQLITE_DONE ;
 int SQLITE_NOMEM ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int fts3SnippetShift (TYPE_4__*,int ,int,char const*,int,int*,int*) ;
 int fts3StringAppend (int *,char const*,int) ;
 int sqlite3Fts3OpenTokenizer (TYPE_6__*,int ,char const*,int,int **) ;
 int sqlite3_column_bytes (int ,int) ;
 scalar_t__ sqlite3_column_text (int ,int) ;
 scalar_t__ sqlite3_column_type (int ,int) ;
 int stub1 (int *,char const**,int*,int*,int*,int*) ;
 int stub2 (int *) ;

__attribute__((used)) static int fts3SnippetText(
  Fts3Cursor *pCsr,
  SnippetFragment *pFragment,
  int iFragment,
  int isLast,
  int nSnippet,
  const char *zOpen,
  const char *zClose,
  const char *zEllipsis,
  StrBuffer *pOut
){
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  int rc;
  const char *zDoc;
  int nDoc;
  int iCurrent = 0;
  int iEnd = 0;
  int isShiftDone = 0;
  int iPos = pFragment->iPos;
  u64 hlmask = pFragment->hlmask;
  int iCol = pFragment->iCol+1;
  sqlite3_tokenizer_module *pMod;
  sqlite3_tokenizer_cursor *pC;

  zDoc = (const char *)sqlite3_column_text(pCsr->pStmt, iCol);
  if( zDoc==0 ){
    if( sqlite3_column_type(pCsr->pStmt, iCol)!=SQLITE_NULL ){
      return SQLITE_NOMEM;
    }
    return SQLITE_OK;
  }
  nDoc = sqlite3_column_bytes(pCsr->pStmt, iCol);


  pMod = (sqlite3_tokenizer_module *)pTab->pTokenizer->pModule;
  rc = sqlite3Fts3OpenTokenizer(pTab->pTokenizer, pCsr->iLangid, zDoc,nDoc,&pC);
  if( rc!=SQLITE_OK ){
    return rc;
  }

  while( rc==SQLITE_OK ){
    const char *ZDUMMY;
    int DUMMY1 = -1;
    int iBegin = 0;
    int iFin = 0;
    int isHighlight = 0;
    rc = pMod->xNext(pC, &ZDUMMY, &DUMMY1, &iBegin, &iFin, &iCurrent);
    if( rc!=SQLITE_OK ){
      if( rc==SQLITE_DONE ){




        rc = fts3StringAppend(pOut, &zDoc[iEnd], -1);
      }
      break;
    }
    if( iCurrent<iPos ){ continue; }

    if( !isShiftDone ){
      int n = nDoc - iBegin;
      rc = fts3SnippetShift(
          pTab, pCsr->iLangid, nSnippet, &zDoc[iBegin], n, &iPos, &hlmask
      );
      isShiftDone = 1;





      if( rc==SQLITE_OK ){
        if( iPos>0 || iFragment>0 ){
          rc = fts3StringAppend(pOut, zEllipsis, -1);
        }else if( iBegin ){
          rc = fts3StringAppend(pOut, zDoc, iBegin);
        }
      }
      if( rc!=SQLITE_OK || iCurrent<iPos ) continue;
    }

    if( iCurrent>=(iPos+nSnippet) ){
      if( isLast ){
        rc = fts3StringAppend(pOut, zEllipsis, -1);
      }
      break;
    }


    isHighlight = (hlmask & ((u64)1 << (iCurrent-iPos)))!=0;

    if( iCurrent>iPos ) rc = fts3StringAppend(pOut, &zDoc[iEnd], iBegin-iEnd);
    if( rc==SQLITE_OK && isHighlight ) rc = fts3StringAppend(pOut, zOpen, -1);
    if( rc==SQLITE_OK ) rc = fts3StringAppend(pOut, &zDoc[iBegin], iFin-iBegin);
    if( rc==SQLITE_OK && isHighlight ) rc = fts3StringAppend(pOut, zClose, -1);

    iEnd = iFin;
  }

  pMod->xClose(pC);
  return rc;
}
