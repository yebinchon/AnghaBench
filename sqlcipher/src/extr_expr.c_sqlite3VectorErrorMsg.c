
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pSelect; } ;
struct TYPE_9__ {int flags; TYPE_3__ x; } ;
struct TYPE_7__ {TYPE_1__* pEList; } ;
struct TYPE_6__ {int nExpr; } ;
typedef int Parse ;
typedef TYPE_4__ Expr ;


 int EP_xIsSelect ;
 int sqlite3ErrorMsg (int *,char*) ;
 int sqlite3SubselectError (int *,int ,int) ;

void sqlite3VectorErrorMsg(Parse *pParse, Expr *pExpr){

  if( pExpr->flags & EP_xIsSelect ){
    sqlite3SubselectError(pParse, pExpr->x.pSelect->pEList->nExpr, 1);
  }else

  {
    sqlite3ErrorMsg(pParse, "row value misused");
  }
}
