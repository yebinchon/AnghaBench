
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_11__ {int flags; struct TYPE_11__* pLeft; struct TYPE_11__* pRight; } ;
typedef TYPE_2__ Expr ;


 int EP_Propagate ;
 int assert (int ) ;
 int exprSetHeight (TYPE_2__*) ;
 int sqlite3ExprDelete (TYPE_1__*,TYPE_2__*) ;

void sqlite3ExprAttachSubtrees(
  sqlite3 *db,
  Expr *pRoot,
  Expr *pLeft,
  Expr *pRight
){
  if( pRoot==0 ){
    assert( db->mallocFailed );
    sqlite3ExprDelete(db, pLeft);
    sqlite3ExprDelete(db, pRight);
  }else{
    if( pRight ){
      pRoot->pRight = pRight;
      pRoot->flags |= EP_Propagate & pRight->flags;
    }
    if( pLeft ){
      pRoot->pLeft = pLeft;
      pRoot->flags |= EP_Propagate & pLeft->flags;
    }
    exprSetHeight(pRoot);
  }
}
