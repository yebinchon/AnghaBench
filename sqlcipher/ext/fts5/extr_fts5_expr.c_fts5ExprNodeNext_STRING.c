
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_21__ {int bDesc; } ;
struct TYPE_20__ {int bEof; scalar_t__ bNomatch; TYPE_2__* pNear; } ;
struct TYPE_19__ {TYPE_3__* pIter; struct TYPE_19__* pSynonym; } ;
struct TYPE_18__ {scalar_t__ iRowid; } ;
struct TYPE_17__ {TYPE_1__** apPhrase; } ;
struct TYPE_16__ {TYPE_4__* aTerm; } ;
typedef TYPE_3__ Fts5IndexIter ;
typedef TYPE_4__ Fts5ExprTerm ;
typedef TYPE_5__ Fts5ExprNode ;
typedef TYPE_6__ Fts5Expr ;


 int Fts5NodeIsString (TYPE_5__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeTest_STRING (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ fts5ExprSynonymRowid (TYPE_4__*,int,int ) ;
 scalar_t__ sqlite3Fts5IterEof (TYPE_3__*) ;
 int sqlite3Fts5IterNext (TYPE_3__*) ;
 int sqlite3Fts5IterNextFrom (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static int fts5ExprNodeNext_STRING(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode,
  int bFromValid,
  i64 iFrom
){
  Fts5ExprTerm *pTerm = &pNode->pNear->apPhrase[0]->aTerm[0];
  int rc = SQLITE_OK;

  pNode->bNomatch = 0;
  if( pTerm->pSynonym ){
    int bEof = 1;
    Fts5ExprTerm *p;


    i64 iRowid = fts5ExprSynonymRowid(pTerm, pExpr->bDesc, 0);



    for(p=pTerm; p; p=p->pSynonym){
      if( sqlite3Fts5IterEof(p->pIter)==0 ){
        i64 ii = p->pIter->iRowid;
        if( ii==iRowid
         || (bFromValid && ii!=iFrom && (ii>iFrom)==pExpr->bDesc)
        ){
          if( bFromValid ){
            rc = sqlite3Fts5IterNextFrom(p->pIter, iFrom);
          }else{
            rc = sqlite3Fts5IterNext(p->pIter);
          }
          if( rc!=SQLITE_OK ) break;
          if( sqlite3Fts5IterEof(p->pIter)==0 ){
            bEof = 0;
          }
        }else{
          bEof = 0;
        }
      }
    }



    pNode->bEof = (rc || bEof);
  }else{
    Fts5IndexIter *pIter = pTerm->pIter;

    assert( Fts5NodeIsString(pNode) );
    if( bFromValid ){
      rc = sqlite3Fts5IterNextFrom(pIter, iFrom);
    }else{
      rc = sqlite3Fts5IterNext(pIter);
    }

    pNode->bEof = (rc || sqlite3Fts5IterEof(pIter));
  }

  if( pNode->bEof==0 ){
    assert( rc==SQLITE_OK );
    rc = fts5ExprNodeTest_STRING(pExpr, pNode);
  }

  return rc;
}
