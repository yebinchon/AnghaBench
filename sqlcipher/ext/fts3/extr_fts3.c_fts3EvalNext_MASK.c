#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int isEof; int isRequireSeek; int isMatchinfoNeeded; scalar_t__ iPrevId; scalar_t__ bDesc; scalar_t__ iMaxDocid; scalar_t__ iMinDocid; int /*<<< orphan*/  pStmt; TYPE_1__* pExpr; } ;
struct TYPE_7__ {int bEof; scalar_t__ iDocid; } ;
typedef  TYPE_1__ Fts3Expr ;
typedef  TYPE_2__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Fts3Cursor *pCsr){
  int rc = SQLITE_OK;             /* Return Code */
  Fts3Expr *pExpr = pCsr->pExpr;
  FUNC0( pCsr->isEof==0 );
  if( pExpr==0 ){
    pCsr->isEof = 1;
  }else{
    do {
      if( pCsr->isRequireSeek==0 ){
        FUNC4(pCsr->pStmt);
      }
      FUNC0( FUNC3(pCsr->pStmt)==0 );
      FUNC1(pCsr, pExpr, &rc);
      pCsr->isEof = pExpr->bEof;
      pCsr->isRequireSeek = 1;
      pCsr->isMatchinfoNeeded = 1;
      pCsr->iPrevId = pExpr->iDocid;
    }while( pCsr->isEof==0 && FUNC2(pCsr, &rc) );
  }

  /* Check if the cursor is past the end of the docid range specified
  ** by Fts3Cursor.iMinDocid/iMaxDocid. If so, set the EOF flag.  */
  if( rc==SQLITE_OK && (
        (pCsr->bDesc==0 && pCsr->iPrevId>pCsr->iMaxDocid)
     || (pCsr->bDesc!=0 && pCsr->iPrevId<pCsr->iMinDocid)
  )){
    pCsr->isEof = 1;
  }

  return rc;
}