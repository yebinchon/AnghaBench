#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_19__ {int bDesc; } ;
struct TYPE_18__ {int nPhrase; TYPE_3__** apPhrase; } ;
struct TYPE_17__ {int bNomatch; int bEof; scalar_t__ iRowid; TYPE_5__* pNear; } ;
struct TYPE_16__ {int nTerm; TYPE_2__* aTerm; } ;
struct TYPE_15__ {TYPE_1__* pIter; scalar_t__ pSynonym; scalar_t__ bFirst; } ;
struct TYPE_14__ {scalar_t__ bEof; scalar_t__ iRowid; } ;
typedef  TYPE_1__ Fts5IndexIter ;
typedef  TYPE_2__ Fts5ExprTerm ;
typedef  TYPE_3__ Fts5ExprPhrase ;
typedef  TYPE_4__ Fts5ExprNode ;
typedef  TYPE_5__ Fts5ExprNearset ;
typedef  TYPE_6__ Fts5Expr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int const,scalar_t__*,int*,int*) ; 
 scalar_t__ FUNC2 (int*,TYPE_6__*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int const,scalar_t__*,int*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
  Fts5Expr *pExpr,                /* Expression pPhrase belongs to */
  Fts5ExprNode *pNode
){
  Fts5ExprNearset *pNear = pNode->pNear;
  Fts5ExprPhrase *pLeft = pNear->apPhrase[0];
  int rc = SQLITE_OK;
  i64 iLast;                      /* Lastest rowid any iterator points to */
  int i, j;                       /* Phrase and token index, respectively */
  int bMatch;                     /* True if all terms are at the same rowid */
  const int bDesc = pExpr->bDesc;

  /* Check that this node should not be FTS5_TERM */
  FUNC0( pNear->nPhrase>1 
       || pNear->apPhrase[0]->nTerm>1 
       || pNear->apPhrase[0]->aTerm[0].pSynonym
       || pNear->apPhrase[0]->aTerm[0].bFirst
  );

  /* Initialize iLast, the "lastest" rowid any iterator points to. If the
  ** iterator skips through rowids in the default ascending order, this means
  ** the maximum rowid. Or, if the iterator is "ORDER BY rowid DESC", then it
  ** means the minimum rowid.  */
  if( pLeft->aTerm[0].pSynonym ){
    iLast = FUNC4(&pLeft->aTerm[0], bDesc, 0);
  }else{
    iLast = pLeft->aTerm[0].pIter->iRowid;
  }

  do {
    bMatch = 1;
    for(i=0; i<pNear->nPhrase; i++){
      Fts5ExprPhrase *pPhrase = pNear->apPhrase[i];
      for(j=0; j<pPhrase->nTerm; j++){
        Fts5ExprTerm *pTerm = &pPhrase->aTerm[j];
        if( pTerm->pSynonym ){
          i64 iRowid = FUNC4(pTerm, bDesc, 0);
          if( iRowid==iLast ) continue;
          bMatch = 0;
          if( FUNC3(pTerm, bDesc, &iLast, &rc) ){
            pNode->bNomatch = 0;
            pNode->bEof = 1;
            return rc;
          }
        }else{
          Fts5IndexIter *pIter = pPhrase->aTerm[j].pIter;
          if( pIter->iRowid==iLast || pIter->bEof ) continue;
          bMatch = 0;
          if( FUNC1(pIter, bDesc, &iLast, &rc, &pNode->bEof) ){
            return rc;
          }
        }
      }
    }
  }while( bMatch==0 );

  pNode->iRowid = iLast;
  pNode->bNomatch = ((0==FUNC2(&rc, pExpr, pNode)) && rc==SQLITE_OK);
  FUNC0( pNode->bEof==0 || pNode->bNomatch==0 );

  return rc;
}