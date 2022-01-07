
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int bVarSelect; } ;
typedef TYPE_4__ WhereMaskSet ;
struct TYPE_14__ {TYPE_2__* pWin; } ;
struct TYPE_12__ {scalar_t__ pList; int pSelect; } ;
struct TYPE_16__ {scalar_t__ op; TYPE_3__ y; TYPE_1__ x; struct TYPE_16__* pRight; struct TYPE_16__* pLeft; int iTable; } ;
struct TYPE_13__ {scalar_t__ pPartition; scalar_t__ pOrderBy; } ;
typedef TYPE_5__ Expr ;
typedef int Bitmask ;


 int EP_FixedCol ;
 int EP_Leaf ;
 int EP_TokenOnly ;
 int EP_VarSelect ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_5__*,int) ;
 scalar_t__ TK_COLUMN ;
 scalar_t__ TK_FUNCTION ;
 scalar_t__ TK_IF_NULL_ROW ;
 int assert (int) ;
 int exprSelectUsage (TYPE_4__*,int ) ;
 int sqlite3WhereExprListUsage (TYPE_4__*,scalar_t__) ;
 int sqlite3WhereGetMask (TYPE_4__*,int ) ;

Bitmask sqlite3WhereExprUsageNN(WhereMaskSet *pMaskSet, Expr *p){
  Bitmask mask;
  if( p->op==TK_COLUMN && !ExprHasProperty(p, EP_FixedCol) ){
    return sqlite3WhereGetMask(pMaskSet, p->iTable);
  }else if( ExprHasProperty(p, EP_TokenOnly|EP_Leaf) ){
    assert( p->op!=TK_IF_NULL_ROW );
    return 0;
  }
  mask = (p->op==TK_IF_NULL_ROW) ? sqlite3WhereGetMask(pMaskSet, p->iTable) : 0;
  if( p->pLeft ) mask |= sqlite3WhereExprUsageNN(pMaskSet, p->pLeft);
  if( p->pRight ){
    mask |= sqlite3WhereExprUsageNN(pMaskSet, p->pRight);
    assert( p->x.pList==0 );
  }else if( ExprHasProperty(p, EP_xIsSelect) ){
    if( ExprHasProperty(p, EP_VarSelect) ) pMaskSet->bVarSelect = 1;
    mask |= exprSelectUsage(pMaskSet, p->x.pSelect);
  }else if( p->x.pList ){
    mask |= sqlite3WhereExprListUsage(pMaskSet, p->x.pList);
  }

  if( p->op==TK_FUNCTION && p->y.pWin ){
    mask |= sqlite3WhereExprListUsage(pMaskSet, p->y.pWin->pPartition);
    mask |= sqlite3WhereExprListUsage(pMaskSet, p->y.pWin->pOrderBy);
  }

  return mask;
}
