#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_13__ {scalar_t__ pVtab; } ;
struct TYPE_18__ {scalar_t__ iPrevId; int bDesc; TYPE_1__ base; } ;
struct TYPE_17__ {scalar_t__ iDocid; int bEof; scalar_t__ eType; TYPE_4__* pPhrase; struct TYPE_17__* pRight; struct TYPE_17__* pLeft; struct TYPE_17__* pParent; } ;
struct TYPE_14__ {char* pList; int nAll; char* aAll; } ;
struct TYPE_16__ {int iColumn; scalar_t__ bIncr; char* pOrPoslist; scalar_t__ iOrDocid; TYPE_2__ doclist; } ;
struct TYPE_15__ {int nColumn; int bDescIdx; } ;
typedef  TYPE_3__ Fts3Table ;
typedef  TYPE_4__ Fts3Phrase ;
typedef  TYPE_5__ Fts3Expr ;
typedef  TYPE_6__ Fts3Cursor ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FTSQUERY_NEAR ; 
 scalar_t__ FTSQUERY_OR ; 
 scalar_t__ FTSQUERY_PHRASE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,char**,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,char**,scalar_t__*,int*,int*) ; 

int FUNC8(
  Fts3Cursor *pCsr,               /* FTS3 cursor object */
  Fts3Expr *pExpr,                /* Phrase to return doclist for */
  int iCol,                       /* Column to return position list for */
  char **ppOut                    /* OUT: Pointer to position list */
){
  Fts3Phrase *pPhrase = pExpr->pPhrase;
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  char *pIter;
  int iThis;
  sqlite3_int64 iDocid;

  /* If this phrase is applies specifically to some column other than 
  ** column iCol, return a NULL pointer.  */
  *ppOut = 0;
  FUNC1( iCol>=0 && iCol<pTab->nColumn );
  if( (pPhrase->iColumn<pTab->nColumn && pPhrase->iColumn!=iCol) ){
    return SQLITE_OK;
  }

  iDocid = pExpr->iDocid;
  pIter = pPhrase->doclist.pList;
  if( iDocid!=pCsr->iPrevId || pExpr->bEof ){
    int rc = SQLITE_OK;
    int bDescDoclist = pTab->bDescIdx;      /* For DOCID_CMP macro */
    int bOr = 0;
    u8 bTreeEof = 0;
    Fts3Expr *p;                  /* Used to iterate from pExpr to root */
    Fts3Expr *pNear;              /* Most senior NEAR ancestor (or pExpr) */
    int bMatch;

    /* Check if this phrase descends from an OR expression node. If not, 
    ** return NULL. Otherwise, the entry that corresponds to docid 
    ** pCsr->iPrevId may lie earlier in the doclist buffer. Or, if the
    ** tree that the node is part of has been marked as EOF, but the node
    ** itself is not EOF, then it may point to an earlier entry. */
    pNear = pExpr;
    for(p=pExpr->pParent; p; p=p->pParent){
      if( p->eType==FTSQUERY_OR ) bOr = 1;
      if( p->eType==FTSQUERY_NEAR ) pNear = p;
      if( p->bEof ) bTreeEof = 1;
    }
    if( bOr==0 ) return SQLITE_OK;

    /* This is the descendent of an OR node. In this case we cannot use
    ** an incremental phrase. Load the entire doclist for the phrase
    ** into memory in this case.  */
    if( pPhrase->bIncr ){
      int bEofSave = pNear->bEof;
      FUNC4(pCsr, pNear, &rc);
      while( rc==SQLITE_OK && !pNear->bEof ){
        FUNC3(pCsr, pNear, &rc);
        if( bEofSave==0 && pNear->iDocid==iDocid ) break;
      }
      FUNC1( rc!=SQLITE_OK || pPhrase->bIncr==0 );
    }
    if( bTreeEof ){
      while( rc==SQLITE_OK && !pNear->bEof ){
        FUNC3(pCsr, pNear, &rc);
      }
    }
    if( rc!=SQLITE_OK ) return rc;

    bMatch = 1;
    for(p=pNear; p; p=p->pLeft){
      u8 bEof = 0;
      Fts3Expr *pTest = p;
      Fts3Phrase *pPh;
      FUNC1( pTest->eType==FTSQUERY_NEAR || pTest->eType==FTSQUERY_PHRASE );
      if( pTest->eType==FTSQUERY_NEAR ) pTest = pTest->pRight;
      FUNC1( pTest->eType==FTSQUERY_PHRASE );
      pPh = pTest->pPhrase;

      pIter = pPh->pOrPoslist;
      iDocid = pPh->iOrDocid;
      if( pCsr->bDesc==bDescDoclist ){
        bEof = !pPh->doclist.nAll ||
          (pIter >= (pPh->doclist.aAll + pPh->doclist.nAll));
        while( (pIter==0 || FUNC0(iDocid, pCsr->iPrevId)<0 ) && bEof==0 ){
          FUNC6(
              bDescDoclist, pPh->doclist.aAll, pPh->doclist.nAll, 
              &pIter, &iDocid, &bEof
          );
        }
      }else{
        bEof = !pPh->doclist.nAll || (pIter && pIter<=pPh->doclist.aAll);
        while( (pIter==0 || FUNC0(iDocid, pCsr->iPrevId)>0 ) && bEof==0 ){
          int dummy;
          FUNC7(
              bDescDoclist, pPh->doclist.aAll, pPh->doclist.nAll, 
              &pIter, &iDocid, &dummy, &bEof
              );
        }
      }
      pPh->pOrPoslist = pIter;
      pPh->iOrDocid = iDocid;
      if( bEof || iDocid!=pCsr->iPrevId ) bMatch = 0;
    }

    if( bMatch ){
      pIter = pPhrase->pOrPoslist;
    }else{
      pIter = 0;
    }
  }
  if( pIter==0 ) return SQLITE_OK;

  if( *pIter==0x01 ){
    pIter++;
    pIter += FUNC5(pIter, &iThis);
  }else{
    iThis = 0;
  }
  while( iThis<iCol ){
    FUNC2(0, &pIter);
    if( *pIter==0x00 ) return SQLITE_OK;
    pIter++;
    pIter += FUNC5(pIter, &iThis);
  }
  if( *pIter==0x00 ){
    pIter = 0;
  }

  *ppOut = ((iCol==iThis)?pIter:0);
  return SQLITE_OK;
}