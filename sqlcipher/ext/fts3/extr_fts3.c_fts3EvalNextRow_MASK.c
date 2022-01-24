#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_13__ {int bDesc; } ;
struct TYPE_12__ {int /*<<< orphan*/  iDocid; int /*<<< orphan*/  nList; int /*<<< orphan*/  pList; int /*<<< orphan*/  aAll; } ;
struct TYPE_11__ {scalar_t__ bEof; int bStart; int eType; int /*<<< orphan*/  iDocid; TYPE_1__* pPhrase; struct TYPE_11__* pRight; struct TYPE_11__* pLeft; int /*<<< orphan*/  bDeferred; } ;
struct TYPE_10__ {TYPE_3__ doclist; } ;
typedef  TYPE_1__ Fts3Phrase ;
typedef  TYPE_2__ Fts3Expr ;
typedef  TYPE_3__ Fts3Doclist ;
typedef  TYPE_4__ Fts3Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  FTSQUERY_AND 131 
#define  FTSQUERY_NEAR 130 
#define  FTSQUERY_NOT 129 
#define  FTSQUERY_OR 128 
 int const FTSQUERY_PHRASE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
  Fts3Cursor *pCsr,               /* FTS Cursor handle */
  Fts3Expr *pExpr,                /* Expr. to advance to next matching row */
  int *pRc                        /* IN/OUT: Error code */
){
  if( *pRc==SQLITE_OK ){
    int bDescDoclist = pCsr->bDesc;         /* Used by DOCID_CMP() macro */
    FUNC1( pExpr->bEof==0 );
    pExpr->bStart = 1;

    switch( pExpr->eType ){
      case FTSQUERY_NEAR:
      case FTSQUERY_AND: {
        Fts3Expr *pLeft = pExpr->pLeft;
        Fts3Expr *pRight = pExpr->pRight;
        FUNC1( !pLeft->bDeferred || !pRight->bDeferred );

        if( pLeft->bDeferred ){
          /* LHS is entirely deferred. So we assume it matches every row.
          ** Advance the RHS iterator to find the next row visited. */
          FUNC5(pCsr, pRight, pRc);
          pExpr->iDocid = pRight->iDocid;
          pExpr->bEof = pRight->bEof;
        }else if( pRight->bDeferred ){
          /* RHS is entirely deferred. So we assume it matches every row.
          ** Advance the LHS iterator to find the next row visited. */
          FUNC5(pCsr, pLeft, pRc);
          pExpr->iDocid = pLeft->iDocid;
          pExpr->bEof = pLeft->bEof;
        }else{
          /* Neither the RHS or LHS are deferred. */
          FUNC5(pCsr, pLeft, pRc);
          FUNC5(pCsr, pRight, pRc);
          while( !pLeft->bEof && !pRight->bEof && *pRc==SQLITE_OK ){
            sqlite3_int64 iDiff = FUNC0(pLeft->iDocid, pRight->iDocid);
            if( iDiff==0 ) break;
            if( iDiff<0 ){
              FUNC5(pCsr, pLeft, pRc);
            }else{
              FUNC5(pCsr, pRight, pRc);
            }
          }
          pExpr->iDocid = pLeft->iDocid;
          pExpr->bEof = (pLeft->bEof || pRight->bEof);
          if( pExpr->eType==FTSQUERY_NEAR && pExpr->bEof ){
            FUNC1( pRight->eType==FTSQUERY_PHRASE );
            if( pRight->pPhrase->doclist.aAll ){
              Fts3Doclist *pDl = &pRight->pPhrase->doclist;
              while( *pRc==SQLITE_OK && pRight->bEof==0 ){
                FUNC4(pDl->pList, 0, pDl->nList);
                FUNC5(pCsr, pRight, pRc);
              }
            }
            if( pLeft->pPhrase && pLeft->pPhrase->doclist.aAll ){
              Fts3Doclist *pDl = &pLeft->pPhrase->doclist;
              while( *pRc==SQLITE_OK && pLeft->bEof==0 ){
                FUNC4(pDl->pList, 0, pDl->nList);
                FUNC5(pCsr, pLeft, pRc);
              }
            }
          }
        }
        break;
      }
  
      case FTSQUERY_OR: {
        Fts3Expr *pLeft = pExpr->pLeft;
        Fts3Expr *pRight = pExpr->pRight;
        sqlite3_int64 iCmp = FUNC0(pLeft->iDocid, pRight->iDocid);

        FUNC1( pLeft->bStart || pLeft->iDocid==pRight->iDocid );
        FUNC1( pRight->bStart || pLeft->iDocid==pRight->iDocid );

        if( pRight->bEof || (pLeft->bEof==0 && iCmp<0) ){
          FUNC5(pCsr, pLeft, pRc);
        }else if( pLeft->bEof || iCmp>0 ){
          FUNC5(pCsr, pRight, pRc);
        }else{
          FUNC5(pCsr, pLeft, pRc);
          FUNC5(pCsr, pRight, pRc);
        }

        pExpr->bEof = (pLeft->bEof && pRight->bEof);
        iCmp = FUNC0(pLeft->iDocid, pRight->iDocid);
        if( pRight->bEof || (pLeft->bEof==0 &&  iCmp<0) ){
          pExpr->iDocid = pLeft->iDocid;
        }else{
          pExpr->iDocid = pRight->iDocid;
        }

        break;
      }

      case FTSQUERY_NOT: {
        Fts3Expr *pLeft = pExpr->pLeft;
        Fts3Expr *pRight = pExpr->pRight;

        if( pRight->bStart==0 ){
          FUNC5(pCsr, pRight, pRc);
          FUNC1( *pRc!=SQLITE_OK || pRight->bStart );
        }

        FUNC5(pCsr, pLeft, pRc);
        if( pLeft->bEof==0 ){
          while( !*pRc 
              && !pRight->bEof 
              && FUNC0(pLeft->iDocid, pRight->iDocid)>0 
          ){
            FUNC5(pCsr, pRight, pRc);
          }
        }
        pExpr->iDocid = pLeft->iDocid;
        pExpr->bEof = pLeft->bEof;
        break;
      }

      default: {
        Fts3Phrase *pPhrase = pExpr->pPhrase;
        FUNC2(pPhrase);
        *pRc = FUNC3(pCsr, pPhrase, &pExpr->bEof);
        pExpr->iDocid = pPhrase->doclist.iDocid;
        break;
      }
    }
  }
}