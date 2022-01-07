
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pVdbe; } ;
typedef TYPE_1__ Parse ;


 int OP_Move ;
 int assert (int) ;
 int sqlite3VdbeAddOp3 (int ,int ,int,int,int) ;

void sqlite3ExprCodeMove(Parse *pParse, int iFrom, int iTo, int nReg){
  assert( iFrom>=iTo+nReg || iFrom+nReg<=iTo );
  sqlite3VdbeAddOp3(pParse->pVdbe, OP_Move, iFrom, iTo, nReg);
}
