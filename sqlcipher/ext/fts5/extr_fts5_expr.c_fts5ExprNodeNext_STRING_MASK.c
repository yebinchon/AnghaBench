#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_21__ {int bDesc; } ;
struct TYPE_20__ {int bEof; scalar_t__ bNomatch; TYPE_2__* pNear; } ;
struct TYPE_19__ {TYPE_3__* pIter; struct TYPE_19__* pSynonym; } ;
struct TYPE_18__ {scalar_t__ iRowid; } ;
struct TYPE_17__ {TYPE_1__** apPhrase; } ;
struct TYPE_16__ {TYPE_4__* aTerm; } ;
typedef  TYPE_3__ Fts5IndexIter ;
typedef  TYPE_4__ Fts5ExprTerm ;
typedef  TYPE_5__ Fts5ExprNode ;
typedef  TYPE_6__ Fts5Expr ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(
  Fts5Expr *pExpr,                /* Expression pPhrase belongs to */
  Fts5ExprNode *pNode,            /* FTS5_STRING or FTS5_TERM node */
  int bFromValid,
  i64 iFrom 
){
  Fts5ExprTerm *pTerm = &pNode->pNear->apPhrase[0]->aTerm[0];
  int rc = SQLITE_OK;

  pNode->bNomatch = 0;
  if( pTerm->pSynonym ){
    int bEof = 1;
    Fts5ExprTerm *p;

    /* Find the firstest rowid any synonym points to. */
    i64 iRowid = FUNC3(pTerm, pExpr->bDesc, 0);

    /* Advance each iterator that currently points to iRowid. Or, if iFrom
    ** is valid - each iterator that points to a rowid before iFrom.  */
    for(p=pTerm; p; p=p->pSynonym){
      if( FUNC4(p->pIter)==0 ){
        i64 ii = p->pIter->iRowid;
        if( ii==iRowid 
         || (bFromValid && ii!=iFrom && (ii>iFrom)==pExpr->bDesc) 
        ){
          if( bFromValid ){
            rc = FUNC6(p->pIter, iFrom);
          }else{
            rc = FUNC5(p->pIter);
          }
          if( rc!=SQLITE_OK ) break;
          if( FUNC4(p->pIter)==0 ){
            bEof = 0;
          }
        }else{
          bEof = 0;
        }
      }
    }

    /* Set the EOF flag if either all synonym iterators are at EOF or an
    ** error has occurred.  */
    pNode->bEof = (rc || bEof);
  }else{
    Fts5IndexIter *pIter = pTerm->pIter;

    FUNC1( FUNC0(pNode) );
    if( bFromValid ){
      rc = FUNC6(pIter, iFrom);
    }else{
      rc = FUNC5(pIter);
    }

    pNode->bEof = (rc || FUNC4(pIter));
  }

  if( pNode->bEof==0 ){
    FUNC1( rc==SQLITE_OK );
    rc = FUNC2(pExpr, pNode);
  }

  return rc;
}