
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int iOrderByCol; } ;
struct TYPE_13__ {TYPE_1__ x; } ;
struct ExprList_item {TYPE_2__ u; scalar_t__ bSorterRef; int * pExpr; } ;
struct TYPE_14__ {int opcode; int p1; int p3; int p2; } ;
typedef TYPE_3__ VdbeOp ;
typedef int Vdbe ;
struct TYPE_16__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_15__ {int * pVdbe; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ ExprList ;
typedef int Expr ;


 int ConstFactorOk (TYPE_4__*) ;
 int OP_Copy ;
 int OP_SCopy ;
 int SQLITE_ECEL_DUP ;
 int SQLITE_ECEL_FACTOR ;
 int SQLITE_ECEL_OMITREF ;
 int SQLITE_ECEL_REF ;
 int assert (int) ;
 int sqlite3ExprCodeAtInit (TYPE_4__*,int *,int) ;
 int sqlite3ExprCodeTarget (TYPE_4__*,int *,int) ;
 scalar_t__ sqlite3ExprIsConstantNotJoin (int *) ;
 int sqlite3VdbeAddOp2 (int *,int,int,int) ;
 TYPE_3__* sqlite3VdbeGetOp (int *,int) ;

int sqlite3ExprCodeExprList(
  Parse *pParse,
  ExprList *pList,
  int target,
  int srcReg,
  u8 flags
){
  struct ExprList_item *pItem;
  int i, j, n;
  u8 copyOp = (flags & SQLITE_ECEL_DUP) ? OP_Copy : OP_SCopy;
  Vdbe *v = pParse->pVdbe;
  assert( pList!=0 );
  assert( target>0 );
  assert( pParse->pVdbe!=0 );
  n = pList->nExpr;
  if( !ConstFactorOk(pParse) ) flags &= ~SQLITE_ECEL_FACTOR;
  for(pItem=pList->a, i=0; i<n; i++, pItem++){
    Expr *pExpr = pItem->pExpr;






    if( (flags & SQLITE_ECEL_REF)!=0 && (j = pItem->u.x.iOrderByCol)>0 ){
      if( flags & SQLITE_ECEL_OMITREF ){
        i--;
        n--;
      }else{
        sqlite3VdbeAddOp2(v, copyOp, j+srcReg-1, target+i);
      }
    }else if( (flags & SQLITE_ECEL_FACTOR)!=0
           && sqlite3ExprIsConstantNotJoin(pExpr)
    ){
      sqlite3ExprCodeAtInit(pParse, pExpr, target+i);
    }else{
      int inReg = sqlite3ExprCodeTarget(pParse, pExpr, target+i);
      if( inReg!=target+i ){
        VdbeOp *pOp;
        if( copyOp==OP_Copy
         && (pOp=sqlite3VdbeGetOp(v, -1))->opcode==OP_Copy
         && pOp->p1+pOp->p3+1==inReg
         && pOp->p2+pOp->p3+1==target+i
        ){
          pOp->p3++;
        }else{
          sqlite3VdbeAddOp2(v, copyOp, inReg, target+i);
        }
      }
    }
  }
  return n;
}
