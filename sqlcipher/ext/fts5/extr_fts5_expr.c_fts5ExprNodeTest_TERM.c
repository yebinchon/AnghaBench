
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_18__ {TYPE_3__* pConfig; } ;
struct TYPE_17__ {scalar_t__ eType; int bNomatch; int iRowid; TYPE_1__* pNear; } ;
struct TYPE_14__ {scalar_t__ n; int * p; } ;
struct TYPE_16__ {int nTerm; TYPE_4__ poslist; TYPE_2__* aTerm; } ;
struct TYPE_15__ {scalar_t__ nData; int iRowid; scalar_t__ pData; } ;
struct TYPE_13__ {scalar_t__ eDetail; } ;
struct TYPE_12__ {scalar_t__ pSynonym; TYPE_5__* pIter; } ;
struct TYPE_11__ {int nPhrase; TYPE_6__** apPhrase; } ;
typedef TYPE_5__ Fts5IndexIter ;
typedef TYPE_6__ Fts5ExprPhrase ;
typedef TYPE_7__ Fts5ExprNode ;
typedef TYPE_8__ Fts5Expr ;


 scalar_t__ FTS5_DETAIL_FULL ;
 scalar_t__ FTS5_TERM ;
 int SQLITE_OK ;
 int assert (int) ;

__attribute__((used)) static int fts5ExprNodeTest_TERM(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode
){





  Fts5ExprPhrase *pPhrase = pNode->pNear->apPhrase[0];
  Fts5IndexIter *pIter = pPhrase->aTerm[0].pIter;

  assert( pNode->eType==FTS5_TERM );
  assert( pNode->pNear->nPhrase==1 && pPhrase->nTerm==1 );
  assert( pPhrase->aTerm[0].pSynonym==0 );

  pPhrase->poslist.n = pIter->nData;
  if( pExpr->pConfig->eDetail==FTS5_DETAIL_FULL ){
    pPhrase->poslist.p = (u8*)pIter->pData;
  }
  pNode->iRowid = pIter->iRowid;
  pNode->bNomatch = (pPhrase->poslist.n==0);
  return SQLITE_OK;
}
