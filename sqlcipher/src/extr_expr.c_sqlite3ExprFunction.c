
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__* aLimit; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Token ;
struct TYPE_18__ {TYPE_4__* pList; } ;
struct TYPE_22__ {TYPE_1__ x; } ;
struct TYPE_21__ {scalar_t__ nExpr; } ;
struct TYPE_20__ {TYPE_2__* db; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ ExprList ;
typedef TYPE_5__ Expr ;


 int EP_Distinct ;
 int EP_HasFunc ;
 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_5__*,int ) ;
 int ExprSetProperty (TYPE_5__*,int ) ;
 int SF_Distinct ;
 size_t SQLITE_LIMIT_FUNCTION_ARG ;
 int TK_FUNCTION ;
 int assert (int) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*,int *) ;
 TYPE_5__* sqlite3ExprAlloc (TYPE_2__*,int ,int *,int) ;
 int sqlite3ExprListDelete (TYPE_2__*,TYPE_4__*) ;
 int sqlite3ExprSetHeightAndFlags (TYPE_3__*,TYPE_5__*) ;

Expr *sqlite3ExprFunction(
  Parse *pParse,
  ExprList *pList,
  Token *pToken,
  int eDistinct
){
  Expr *pNew;
  sqlite3 *db = pParse->db;
  assert( pToken );
  pNew = sqlite3ExprAlloc(db, TK_FUNCTION, pToken, 1);
  if( pNew==0 ){
    sqlite3ExprListDelete(db, pList);
    return 0;
  }
  if( pList && pList->nExpr > pParse->db->aLimit[SQLITE_LIMIT_FUNCTION_ARG] ){
    sqlite3ErrorMsg(pParse, "too many arguments on function %T", pToken);
  }
  pNew->x.pList = pList;
  ExprSetProperty(pNew, EP_HasFunc);
  assert( !ExprHasProperty(pNew, EP_xIsSelect) );
  sqlite3ExprSetHeightAndFlags(pParse, pNew);
  if( eDistinct==SF_Distinct ) ExprSetProperty(pNew, EP_Distinct);
  return pNew;
}
