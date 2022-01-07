
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int mallocFailed; } ;
struct TYPE_10__ {int * pSelect; } ;
struct TYPE_12__ {TYPE_1__ x; } ;
struct TYPE_11__ {TYPE_4__* db; } ;
typedef int Select ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Expr ;


 int EP_Subquery ;
 int EP_xIsSelect ;
 int ExprSetProperty (TYPE_3__*,int) ;
 int assert (int ) ;
 int sqlite3ExprSetHeightAndFlags (TYPE_2__*,TYPE_3__*) ;
 int sqlite3SelectDelete (TYPE_4__*,int *) ;

void sqlite3PExprAddSelect(Parse *pParse, Expr *pExpr, Select *pSelect){
  if( pExpr ){
    pExpr->x.pSelect = pSelect;
    ExprSetProperty(pExpr, EP_xIsSelect|EP_Subquery);
    sqlite3ExprSetHeightAndFlags(pParse, pExpr);
  }else{
    assert( pParse->db->mallocFailed );
    sqlite3SelectDelete(pParse->db, pSelect);
  }
}
