
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* pMWin; TYPE_5__* pParse; } ;
typedef TYPE_4__ WindowCodeArg ;
typedef int Vdbe ;
struct TYPE_15__ {int nMem; } ;
struct TYPE_13__ {TYPE_2__* pOrderBy; } ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_11__ {scalar_t__ sortOrder; } ;
typedef TYPE_5__ Parse ;


 int OP_Add ;


 int OP_Le ;
 int OP_Lt ;
 int OP_String8 ;
 int OP_Subtract ;
 int P4_STATIC ;
 int SQLITE_NULLEQ ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int assert (int) ;
 int sqlite3GetTempReg (TYPE_5__*) ;
 int * sqlite3GetVdbe (TYPE_5__*) ;
 int sqlite3ReleaseTempReg (TYPE_5__*,int) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int testcase (int) ;
 int windowReadPeerValues (TYPE_4__*,int,int) ;

__attribute__((used)) static void windowCodeRangeTest(
  WindowCodeArg *p,
  int op,
  int csr1,
  int regVal,
  int csr2,
  int lbl
){
  Parse *pParse = p->pParse;
  Vdbe *v = sqlite3GetVdbe(pParse);
  int reg1 = sqlite3GetTempReg(pParse);
  int reg2 = sqlite3GetTempReg(pParse);
  int arith = OP_Add;
  int addrGe;

  int regString = ++pParse->nMem;

  assert( op==129 || op==128 || op==OP_Le );
  assert( p->pMWin->pOrderBy && p->pMWin->pOrderBy->nExpr==1 );
  if( p->pMWin->pOrderBy->a[0].sortOrder ){
    switch( op ){
      case 129: op = OP_Le; break;
      case 128: op = OP_Lt; break;
      default: assert( op==OP_Le ); op = 129; break;
    }
    arith = OP_Subtract;
  }

  windowReadPeerValues(p, csr1, reg1);
  windowReadPeerValues(p, csr2, reg2);




  sqlite3VdbeAddOp4(v, OP_String8, 0, regString, 0, "", P4_STATIC);
  addrGe = sqlite3VdbeAddOp3(v, 129, regString, 0, reg1);
  VdbeCoverage(v);
  sqlite3VdbeAddOp3(v, arith, regVal, reg1, reg1);
  sqlite3VdbeJumpHere(v, addrGe);
  sqlite3VdbeAddOp3(v, op, reg2, lbl, reg1); VdbeCoverage(v);
  sqlite3VdbeChangeP5(v, SQLITE_NULLEQ);
  assert( op==129 || op==128 || op==OP_Lt || op==OP_Le );
  testcase(op==129); VdbeCoverageIf(v, op==129);
  testcase(op==OP_Lt); VdbeCoverageIf(v, op==OP_Lt);
  testcase(op==OP_Le); VdbeCoverageIf(v, op==OP_Le);
  testcase(op==128); VdbeCoverageIf(v, op==128);

  sqlite3ReleaseTempReg(pParse, reg1);
  sqlite3ReleaseTempReg(pParse, reg2);
}
