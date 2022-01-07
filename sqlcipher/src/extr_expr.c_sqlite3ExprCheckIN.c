
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pSelect; } ;
struct TYPE_9__ {int flags; int pLeft; TYPE_3__ x; } ;
struct TYPE_7__ {TYPE_1__* pEList; } ;
struct TYPE_6__ {int nExpr; } ;
typedef int Parse ;
typedef TYPE_4__ Expr ;


 int EP_xIsSelect ;
 int sqlite3ExprVectorSize (int ) ;
 int sqlite3SubselectError (int *,int,int) ;
 int sqlite3VectorErrorMsg (int *,int ) ;

int sqlite3ExprCheckIN(Parse *pParse, Expr *pIn){
  int nVector = sqlite3ExprVectorSize(pIn->pLeft);
  if( (pIn->flags & EP_xIsSelect) ){
    if( nVector!=pIn->x.pSelect->pEList->nExpr ){
      sqlite3SubselectError(pParse, pIn->x.pSelect->pEList->nExpr, nVector);
      return 1;
    }
  }else if( nVector!=1 ){
    sqlite3VectorErrorMsg(pParse, pIn->pLeft);
    return 1;
  }
  return 0;
}
