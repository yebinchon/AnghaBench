#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int eType; struct TYPE_13__* pParent; struct TYPE_13__* pLeft; struct TYPE_13__* pRight; } ;
struct TYPE_12__ {scalar_t__ isNot; } ;
typedef  TYPE_1__ ParseContext ;
typedef  TYPE_2__ Fts3Expr ;

/* Variables and functions */
 int FTSQUERY_AND ; 
 int FTSQUERY_NEAR ; 
 int FTSQUERY_NOT ; 
 int FTSQUERY_PHRASE ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,char const*,int,TYPE_2__**,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  sqlite3_fts3_enable_parentheses ; 

__attribute__((used)) static int FUNC5(
  ParseContext *pParse,                   /* fts3 query parse context */
  const char *z, int n,                   /* Text of MATCH query */
  Fts3Expr **ppExpr,                      /* OUT: Parsed query structure */
  int *pnConsumed                         /* OUT: Number of bytes consumed */
){
  Fts3Expr *pRet = 0;
  Fts3Expr *pPrev = 0;
  Fts3Expr *pNotBranch = 0;               /* Only used in legacy parse mode */
  int nIn = n;
  const char *zIn = z;
  int rc = SQLITE_OK;
  int isRequirePhrase = 1;

  while( rc==SQLITE_OK ){
    Fts3Expr *p = 0;
    int nByte = 0;

    rc = FUNC2(pParse, zIn, nIn, &p, &nByte);
    FUNC0( nByte>0 || (rc!=SQLITE_OK && p==0) );
    if( rc==SQLITE_OK ){
      if( p ){
        int isPhrase;

        if( !sqlite3_fts3_enable_parentheses 
            && p->eType==FTSQUERY_PHRASE && pParse->isNot 
        ){
          /* Create an implicit NOT operator. */
          Fts3Expr *pNot = FUNC1(sizeof(Fts3Expr));
          if( !pNot ){
            FUNC4(p);
            rc = SQLITE_NOMEM;
            goto exprparse_out;
          }
          pNot->eType = FTSQUERY_NOT;
          pNot->pRight = p;
          p->pParent = pNot;
          if( pNotBranch ){
            pNot->pLeft = pNotBranch;
            pNotBranch->pParent = pNot;
          }
          pNotBranch = pNot;
          p = pPrev;
        }else{
          int eType = p->eType;
          isPhrase = (eType==FTSQUERY_PHRASE || p->pLeft);

          /* The isRequirePhrase variable is set to true if a phrase or
          ** an expression contained in parenthesis is required. If a
          ** binary operator (AND, OR, NOT or NEAR) is encounted when
          ** isRequirePhrase is set, this is a syntax error.
          */
          if( !isPhrase && isRequirePhrase ){
            FUNC4(p);
            rc = SQLITE_ERROR;
            goto exprparse_out;
          }

          if( isPhrase && !isRequirePhrase ){
            /* Insert an implicit AND operator. */
            Fts3Expr *pAnd;
            FUNC0( pRet && pPrev );
            pAnd = FUNC1(sizeof(Fts3Expr));
            if( !pAnd ){
              FUNC4(p);
              rc = SQLITE_NOMEM;
              goto exprparse_out;
            }
            pAnd->eType = FTSQUERY_AND;
            FUNC3(&pRet, pPrev, pAnd);
            pPrev = pAnd;
          }

          /* This test catches attempts to make either operand of a NEAR
           ** operator something other than a phrase. For example, either of
           ** the following:
           **
           **    (bracketed expression) NEAR phrase
           **    phrase NEAR (bracketed expression)
           **
           ** Return an error in either case.
           */
          if( pPrev && (
            (eType==FTSQUERY_NEAR && !isPhrase && pPrev->eType!=FTSQUERY_PHRASE)
         || (eType!=FTSQUERY_PHRASE && isPhrase && pPrev->eType==FTSQUERY_NEAR)
          )){
            FUNC4(p);
            rc = SQLITE_ERROR;
            goto exprparse_out;
          }

          if( isPhrase ){
            if( pRet ){
              FUNC0( pPrev && pPrev->pLeft && pPrev->pRight==0 );
              pPrev->pRight = p;
              p->pParent = pPrev;
            }else{
              pRet = p;
            }
          }else{
            FUNC3(&pRet, pPrev, p);
          }
          isRequirePhrase = !isPhrase;
        }
        pPrev = p;
      }
      FUNC0( nByte>0 );
    }
    FUNC0( rc!=SQLITE_OK || (nByte>0 && nByte<=nIn) );
    nIn -= nByte;
    zIn += nByte;
  }

  if( rc==SQLITE_DONE && pRet && isRequirePhrase ){
    rc = SQLITE_ERROR;
  }

  if( rc==SQLITE_DONE ){
    rc = SQLITE_OK;
    if( !sqlite3_fts3_enable_parentheses && pNotBranch ){
      if( !pRet ){
        rc = SQLITE_ERROR;
      }else{
        Fts3Expr *pIter = pNotBranch;
        while( pIter->pLeft ){
          pIter = pIter->pLeft;
        }
        pIter->pLeft = pRet;
        pRet->pParent = pIter;
        pRet = pNotBranch;
      }
    }
  }
  *pnConsumed = n - nIn;

exprparse_out:
  if( rc!=SQLITE_OK ){
    FUNC4(pRet);
    FUNC4(pNotBranch);
    pRet = 0;
  }
  *ppExpr = pRet;
  return rc;
}