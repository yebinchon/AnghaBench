
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_10__ {int bEof; scalar_t__ bNomatch; TYPE_3__* pNear; } ;
struct TYPE_9__ {TYPE_2__** apPhrase; } ;
struct TYPE_8__ {TYPE_1__* aTerm; } ;
struct TYPE_7__ {int * pIter; } ;
typedef int Fts5IndexIter ;
typedef TYPE_4__ Fts5ExprNode ;
typedef int Fts5Expr ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeTest_TERM (int *,TYPE_4__*) ;
 scalar_t__ sqlite3Fts5IterEof (int *) ;
 int sqlite3Fts5IterNext (int *) ;
 int sqlite3Fts5IterNextFrom (int *,int ) ;

__attribute__((used)) static int fts5ExprNodeNext_TERM(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode,
  int bFromValid,
  i64 iFrom
){
  int rc;
  Fts5IndexIter *pIter = pNode->pNear->apPhrase[0]->aTerm[0].pIter;

  assert( pNode->bEof==0 );
  if( bFromValid ){
    rc = sqlite3Fts5IterNextFrom(pIter, iFrom);
  }else{
    rc = sqlite3Fts5IterNext(pIter);
  }
  if( rc==SQLITE_OK && sqlite3Fts5IterEof(pIter)==0 ){
    rc = fts5ExprNodeTest_TERM(pExpr, pNode);
  }else{
    pNode->bEof = 1;
    pNode->bNomatch = 0;
  }
  return rc;
}
