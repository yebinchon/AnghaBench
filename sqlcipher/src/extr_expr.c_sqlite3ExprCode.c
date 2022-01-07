
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ op; int iTable; } ;
struct TYPE_9__ {int nMem; scalar_t__ pVdbe; TYPE_1__* db; } ;
struct TYPE_8__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Expr ;


 int OP_Copy ;
 int OP_SCopy ;
 scalar_t__ TK_REGISTER ;
 int assert (int) ;
 int sqlite3ExprCodeTarget (TYPE_2__*,TYPE_3__*,int) ;
 int sqlite3VdbeAddOp2 (scalar_t__,int ,int,int) ;

void sqlite3ExprCode(Parse *pParse, Expr *pExpr, int target){
  int inReg;

  assert( target>0 && target<=pParse->nMem );
  if( pExpr && pExpr->op==TK_REGISTER ){
    sqlite3VdbeAddOp2(pParse->pVdbe, OP_Copy, pExpr->iTable, target);
  }else{
    inReg = sqlite3ExprCodeTarget(pParse, pExpr, target);
    assert( pParse->pVdbe!=0 || pParse->db->mallocFailed );
    if( inReg!=target && pParse->pVdbe ){
      sqlite3VdbeAddOp2(pParse->pVdbe, OP_SCopy, inReg, target);
    }
  }
}
