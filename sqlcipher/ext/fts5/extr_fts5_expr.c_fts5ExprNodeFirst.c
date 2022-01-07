
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bEof; scalar_t__ xNext; int nChild; int eType; struct TYPE_7__** apChild; int iRowid; scalar_t__ bNomatch; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;



 int FTS5_NOT ;

 scalar_t__ Fts5NodeIsString (TYPE_1__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNearInitAll (int *,TYPE_1__*) ;
 int fts5ExprNodeTest (int *,TYPE_1__*) ;
 int fts5ExprSetEof (TYPE_1__*) ;

__attribute__((used)) static int fts5ExprNodeFirst(Fts5Expr *pExpr, Fts5ExprNode *pNode){
  int rc = SQLITE_OK;
  pNode->bEof = 0;
  pNode->bNomatch = 0;

  if( Fts5NodeIsString(pNode) ){

    rc = fts5ExprNearInitAll(pExpr, pNode);
  }else if( pNode->xNext==0 ){
    pNode->bEof = 1;
  }else{
    int i;
    int nEof = 0;
    for(i=0; i<pNode->nChild && rc==SQLITE_OK; i++){
      Fts5ExprNode *pChild = pNode->apChild[i];
      rc = fts5ExprNodeFirst(pExpr, pNode->apChild[i]);
      assert( pChild->bEof==0 || pChild->bEof==1 );
      nEof += pChild->bEof;
    }
    pNode->iRowid = pNode->apChild[0]->iRowid;

    switch( pNode->eType ){
      case 129:
        if( nEof>0 ) fts5ExprSetEof(pNode);
        break;

      case 128:
        if( pNode->nChild==nEof ) fts5ExprSetEof(pNode);
        break;

      default:
        assert( pNode->eType==FTS5_NOT );
        pNode->bEof = pNode->apChild[0]->bEof;
        break;
    }
  }

  if( rc==SQLITE_OK ){
    rc = fts5ExprNodeTest(pExpr, pNode);
  }
  return rc;
}
