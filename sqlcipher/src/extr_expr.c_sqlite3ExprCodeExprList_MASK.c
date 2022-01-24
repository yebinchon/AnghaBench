#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_12__ {int iOrderByCol; } ;
struct TYPE_13__ {TYPE_1__ x; } ;
struct ExprList_item {TYPE_2__ u; scalar_t__ bSorterRef; int /*<<< orphan*/ * pExpr; } ;
struct TYPE_14__ {int opcode; int p1; int p3; int p2; } ;
typedef  TYPE_3__ VdbeOp ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_16__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int OP_Copy ; 
 int OP_SCopy ; 
 int SQLITE_ECEL_DUP ; 
 int SQLITE_ECEL_FACTOR ; 
 int SQLITE_ECEL_OMITREF ; 
 int SQLITE_ECEL_REF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(
  Parse *pParse,     /* Parsing context */
  ExprList *pList,   /* The expression list to be coded */
  int target,        /* Where to write results */
  int srcReg,        /* Source registers if SQLITE_ECEL_REF */
  u8 flags           /* SQLITE_ECEL_* flags */
){
  struct ExprList_item *pItem;
  int i, j, n;
  u8 copyOp = (flags & SQLITE_ECEL_DUP) ? OP_Copy : OP_SCopy;
  Vdbe *v = pParse->pVdbe;
  FUNC1( pList!=0 );
  FUNC1( target>0 );
  FUNC1( pParse->pVdbe!=0 );  /* Never gets this far otherwise */
  n = pList->nExpr;
  if( !FUNC0(pParse) ) flags &= ~SQLITE_ECEL_FACTOR;
  for(pItem=pList->a, i=0; i<n; i++, pItem++){
    Expr *pExpr = pItem->pExpr;
#ifdef SQLITE_ENABLE_SORTER_REFERENCES
    if( pItem->bSorterRef ){
      i--;
      n--;
    }else
#endif
    if( (flags & SQLITE_ECEL_REF)!=0 && (j = pItem->u.x.iOrderByCol)>0 ){
      if( flags & SQLITE_ECEL_OMITREF ){
        i--;
        n--;
      }else{
        FUNC5(v, copyOp, j+srcReg-1, target+i);
      }
    }else if( (flags & SQLITE_ECEL_FACTOR)!=0
           && FUNC4(pExpr)
    ){
      FUNC2(pParse, pExpr, target+i);
    }else{
      int inReg = FUNC3(pParse, pExpr, target+i);
      if( inReg!=target+i ){
        VdbeOp *pOp;
        if( copyOp==OP_Copy
         && (pOp=FUNC6(v, -1))->opcode==OP_Copy
         && pOp->p1+pOp->p3+1==inReg
         && pOp->p2+pOp->p3+1==target+i
        ){
          pOp->p3++;
        }else{
          FUNC5(v, copyOp, inReg, target+i);
        }
      }
    }
  }
  return n;
}