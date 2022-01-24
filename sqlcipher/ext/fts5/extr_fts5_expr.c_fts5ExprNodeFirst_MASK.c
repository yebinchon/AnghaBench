#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bEof; scalar_t__ xNext; int nChild; int eType; struct TYPE_7__** apChild; int /*<<< orphan*/  iRowid; scalar_t__ bNomatch; } ;
typedef  TYPE_1__ Fts5ExprNode ;
typedef  int /*<<< orphan*/  Fts5Expr ;

/* Variables and functions */
#define  FTS5_AND 129 
 int FTS5_NOT ; 
#define  FTS5_OR 128 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(Fts5Expr *pExpr, Fts5ExprNode *pNode){
  int rc = SQLITE_OK;
  pNode->bEof = 0;
  pNode->bNomatch = 0;

  if( FUNC0(pNode) ){
    /* Initialize all term iterators in the NEAR object. */
    rc = FUNC2(pExpr, pNode);
  }else if( pNode->xNext==0 ){
    pNode->bEof = 1;
  }else{
    int i;
    int nEof = 0;
    for(i=0; i<pNode->nChild && rc==SQLITE_OK; i++){
      Fts5ExprNode *pChild = pNode->apChild[i];
      rc = FUNC5(pExpr, pNode->apChild[i]);
      FUNC1( pChild->bEof==0 || pChild->bEof==1 );
      nEof += pChild->bEof;
    }
    pNode->iRowid = pNode->apChild[0]->iRowid;

    switch( pNode->eType ){
      case FTS5_AND:
        if( nEof>0 ) FUNC4(pNode);
        break;

      case FTS5_OR:
        if( pNode->nChild==nEof ) FUNC4(pNode);
        break;

      default:
        FUNC1( pNode->eType==FTS5_NOT );
        pNode->bEof = pNode->apChild[0]->bEof;
        break;
    }
  }

  if( rc==SQLITE_OK ){
    rc = FUNC3(pExpr, pNode);
  }
  return rc;
}