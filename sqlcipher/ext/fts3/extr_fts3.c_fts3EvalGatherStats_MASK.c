#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_13__ {scalar_t__ pVtab; } ;
struct TYPE_16__ {scalar_t__ iPrevId; scalar_t__ isEof; int isRequireSeek; int isMatchinfoNeeded; int /*<<< orphan*/  pStmt; TYPE_1__ base; } ;
struct TYPE_15__ {scalar_t__ eType; scalar_t__ aMI; scalar_t__ iDocid; scalar_t__ bEof; int bStart; struct TYPE_15__* pRight; struct TYPE_15__* pLeft; struct TYPE_15__* pParent; } ;
struct TYPE_14__ {int nColumn; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3Expr ;
typedef  TYPE_4__ Fts3Cursor ;

/* Variables and functions */
 scalar_t__ FTSQUERY_NEAR ; 
 scalar_t__ FTSQUERY_PHRASE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  Fts3Cursor *pCsr,               /* Cursor object */
  Fts3Expr *pExpr                 /* FTSQUERY_PHRASE expression */
){
  int rc = SQLITE_OK;             /* Return code */

  FUNC0( pExpr->eType==FTSQUERY_PHRASE );
  if( pExpr->aMI==0 ){
    Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
    Fts3Expr *pRoot;                /* Root of NEAR expression */
    Fts3Expr *p;                    /* Iterator used for several purposes */

    sqlite3_int64 iPrevId = pCsr->iPrevId;
    sqlite3_int64 iDocid;
    u8 bEof;

    /* Find the root of the NEAR expression */
    pRoot = pExpr;
    while( pRoot->pParent && pRoot->pParent->eType==FTSQUERY_NEAR ){
      pRoot = pRoot->pParent;
    }
    iDocid = pRoot->iDocid;
    bEof = pRoot->bEof;
    FUNC0( pRoot->bStart );

    /* Allocate space for the aMSI[] array of each FTSQUERY_PHRASE node */
    for(p=pRoot; p; p=p->pLeft){
      Fts3Expr *pE = (p->eType==FTSQUERY_PHRASE?p:p->pRight);
      FUNC0( pE->aMI==0 );
      pE->aMI = (u32 *)FUNC7(pTab->nColumn * 3 * sizeof(u32));
      if( !pE->aMI ) return SQLITE_NOMEM;
      FUNC4(pE->aMI, 0, pTab->nColumn * 3 * sizeof(u32));
    }

    FUNC2(pCsr, pRoot, &rc);

    while( pCsr->isEof==0 && rc==SQLITE_OK ){

      do {
        /* Ensure the %_content statement is reset. */
        if( pCsr->isRequireSeek==0 ) FUNC8(pCsr->pStmt);
        FUNC0( FUNC6(pCsr->pStmt)==0 );

        /* Advance to the next document */
        FUNC1(pCsr, pRoot, &rc);
        pCsr->isEof = pRoot->bEof;
        pCsr->isRequireSeek = 1;
        pCsr->isMatchinfoNeeded = 1;
        pCsr->iPrevId = pRoot->iDocid;
      }while( pCsr->isEof==0 
           && pRoot->eType==FTSQUERY_NEAR 
           && FUNC5(pCsr, &rc) 
      );

      if( rc==SQLITE_OK && pCsr->isEof==0 ){
        FUNC3(pRoot, pTab->nColumn);
      }
    }

    pCsr->isEof = 0;
    pCsr->iPrevId = iPrevId;

    if( bEof ){
      pRoot->bEof = bEof;
    }else{
      /* Caution: pRoot may iterate through docids in ascending or descending
      ** order. For this reason, even though it seems more defensive, the 
      ** do loop can not be written:
      **
      **   do {...} while( pRoot->iDocid<iDocid && rc==SQLITE_OK );
      */
      FUNC2(pCsr, pRoot, &rc);
      do {
        FUNC1(pCsr, pRoot, &rc);
        FUNC0( pRoot->bEof==0 );
      }while( pRoot->iDocid!=iDocid && rc==SQLITE_OK );
    }
  }
  return rc;
}