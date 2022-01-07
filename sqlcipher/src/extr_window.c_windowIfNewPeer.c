
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_4__ {int nExpr; } ;
typedef int Parse ;
typedef int KeyInfo ;
typedef TYPE_1__ ExprList ;


 int OP_Compare ;
 int OP_Copy ;
 int OP_Goto ;
 int OP_Jump ;
 int P4_KEYINFO ;
 int VdbeCoverageEqNe (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int * sqlite3KeyInfoFromExprList (int *,TYPE_1__*,int ,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAppendP4 (int *,void*,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;

__attribute__((used)) static void windowIfNewPeer(
  Parse *pParse,
  ExprList *pOrderBy,
  int regNew,
  int regOld,
  int addr
){
  Vdbe *v = sqlite3GetVdbe(pParse);
  if( pOrderBy ){
    int nVal = pOrderBy->nExpr;
    KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pOrderBy, 0, 0);
    sqlite3VdbeAddOp3(v, OP_Compare, regOld, regNew, nVal);
    sqlite3VdbeAppendP4(v, (void*)pKeyInfo, P4_KEYINFO);
    sqlite3VdbeAddOp3(v, OP_Jump,
      sqlite3VdbeCurrentAddr(v)+1, addr, sqlite3VdbeCurrentAddr(v)+1
    );
    VdbeCoverageEqNe(v);
    sqlite3VdbeAddOp3(v, OP_Copy, regNew, regOld, nVal-1);
  }else{
    sqlite3VdbeAddOp2(v, OP_Goto, 0, addr);
  }
}
