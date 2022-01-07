
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_25__ {int op; int op2; struct TYPE_25__* pLeft; struct TYPE_25__* pRight; } ;
struct TYPE_24__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 scalar_t__ NEVER (int) ;
 int OP_Eq ;
 int OP_Ge ;
 int OP_Gt ;
 int OP_IfNot ;
 int OP_IsNull ;
 int OP_Le ;
 int OP_Lt ;
 int OP_Ne ;
 int OP_NotNull ;
 int SQLITE_JUMPIFNULL ;
 int SQLITE_NULLEQ ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int assert (int) ;
 int codeCompare (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int,int) ;
 int exprAlwaysFalse (TYPE_2__*) ;
 int exprAlwaysTrue (TYPE_2__*) ;
 int exprCodeBetween (TYPE_1__*,TYPE_2__*,int,void (*) (TYPE_1__*,TYPE_2__*,int,int),int) ;
 int sqlite3ExprCodeIN (TYPE_1__*,TYPE_2__*,int,int) ;
 int sqlite3ExprCodeTemp (TYPE_1__*,TYPE_2__*,int*) ;
 int sqlite3ExprIfTrue (TYPE_1__*,TYPE_2__*,int,int) ;
 int sqlite3ExprIsVector (TYPE_2__*) ;
 int sqlite3ExprTruthValue (TYPE_2__*) ;
 int sqlite3ReleaseTempReg (TYPE_1__*,int) ;
 int sqlite3VdbeAddOp2 (int *,int,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_1__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

void sqlite3ExprIfFalse(Parse *pParse, Expr *pExpr, int dest, int jumpIfNull){
  Vdbe *v = pParse->pVdbe;
  int op = 0;
  int regFree1 = 0;
  int regFree2 = 0;
  int r1, r2;

  assert( jumpIfNull==SQLITE_JUMPIFNULL || jumpIfNull==0 );
  if( NEVER(v==0) ) return;
  if( pExpr==0 ) return;
  op = ((pExpr->op+(135&1))^1)-(135&1);



  assert( pExpr->op!=135 || op==OP_NotNull );
  assert( pExpr->op!=130 || op==OP_IsNull );
  assert( pExpr->op!=132 || op==OP_Eq );
  assert( pExpr->op!=141 || op==OP_Ne );
  assert( pExpr->op!=133 || op==OP_Ge );
  assert( pExpr->op!=134 || op==OP_Gt );
  assert( pExpr->op!=139 || op==OP_Le );
  assert( pExpr->op!=140 || op==OP_Lt );

  switch( pExpr->op ){
    case 143: {
      testcase( jumpIfNull==0 );
      sqlite3ExprIfFalse(pParse, pExpr->pLeft, dest, jumpIfNull);
      sqlite3ExprIfFalse(pParse, pExpr->pRight, dest, jumpIfNull);
      break;
    }
    case 129: {
      int d2 = sqlite3VdbeMakeLabel(pParse);
      testcase( jumpIfNull==0 );
      sqlite3ExprIfTrue(pParse, pExpr->pLeft, d2, jumpIfNull^SQLITE_JUMPIFNULL);
      sqlite3ExprIfFalse(pParse, pExpr->pRight, dest, jumpIfNull);
      sqlite3VdbeResolveLabel(v, d2);
      break;
    }
    case 131: {
      testcase( jumpIfNull==0 );
      sqlite3ExprIfTrue(pParse, pExpr->pLeft, dest, jumpIfNull);
      break;
    }
    case 128: {
      int isNot;
      int isTrue;
      testcase( jumpIfNull==0 );
      isNot = pExpr->op2==136;
      isTrue = sqlite3ExprTruthValue(pExpr->pRight);
      testcase( isTrue && isNot );
      testcase( !isTrue && isNot );
      if( isTrue ^ isNot ){

        sqlite3ExprIfFalse(pParse, pExpr->pLeft, dest,
                           isNot ? 0 : SQLITE_JUMPIFNULL);

      }else{

        sqlite3ExprIfTrue(pParse, pExpr->pLeft, dest,
                          isNot ? 0 : SQLITE_JUMPIFNULL);
      }
      break;
    }
    case 137:
    case 136:
      testcase( pExpr->op==137 );
      testcase( pExpr->op==136 );
      op = (pExpr->op==137) ? 132 : 141;
      jumpIfNull = SQLITE_NULLEQ;

    case 133:
    case 134:
    case 139:
    case 140:
    case 132:
    case 141: {
      if( sqlite3ExprIsVector(pExpr->pLeft) ) goto default_expr;
      testcase( jumpIfNull==0 );
      r1 = sqlite3ExprCodeTemp(pParse, pExpr->pLeft, &regFree1);
      r2 = sqlite3ExprCodeTemp(pParse, pExpr->pRight, &regFree2);
      codeCompare(pParse, pExpr->pLeft, pExpr->pRight, op,
                  r1, r2, dest, jumpIfNull);
      assert(133==OP_Lt); testcase(op==OP_Lt); VdbeCoverageIf(v,op==OP_Lt);
      assert(134==OP_Le); testcase(op==OP_Le); VdbeCoverageIf(v,op==OP_Le);
      assert(139==OP_Gt); testcase(op==OP_Gt); VdbeCoverageIf(v,op==OP_Gt);
      assert(140==OP_Ge); testcase(op==OP_Ge); VdbeCoverageIf(v,op==OP_Ge);
      assert(141==OP_Eq); testcase(op==OP_Eq);
      VdbeCoverageIf(v, op==OP_Eq && jumpIfNull!=SQLITE_NULLEQ);
      VdbeCoverageIf(v, op==OP_Eq && jumpIfNull==SQLITE_NULLEQ);
      assert(132==OP_Ne); testcase(op==OP_Ne);
      VdbeCoverageIf(v, op==OP_Ne && jumpIfNull!=SQLITE_NULLEQ);
      VdbeCoverageIf(v, op==OP_Ne && jumpIfNull==SQLITE_NULLEQ);
      testcase( regFree1==0 );
      testcase( regFree2==0 );
      break;
    }
    case 135:
    case 130: {
      r1 = sqlite3ExprCodeTemp(pParse, pExpr->pLeft, &regFree1);
      sqlite3VdbeAddOp2(v, op, r1, dest);
      testcase( op==135 ); VdbeCoverageIf(v, op==135);
      testcase( op==130 ); VdbeCoverageIf(v, op==130);
      testcase( regFree1==0 );
      break;
    }
    case 142: {
      testcase( jumpIfNull==0 );
      exprCodeBetween(pParse, pExpr, dest, sqlite3ExprIfFalse, jumpIfNull);
      break;
    }

    case 138: {
      if( jumpIfNull ){
        sqlite3ExprCodeIN(pParse, pExpr, dest, dest);
      }else{
        int destIfNull = sqlite3VdbeMakeLabel(pParse);
        sqlite3ExprCodeIN(pParse, pExpr, dest, destIfNull);
        sqlite3VdbeResolveLabel(v, destIfNull);
      }
      break;
    }

    default: {
    default_expr:
      if( exprAlwaysFalse(pExpr) ){
        sqlite3VdbeGoto(v, dest);
      }else if( exprAlwaysTrue(pExpr) ){

      }else{
        r1 = sqlite3ExprCodeTemp(pParse, pExpr, &regFree1);
        sqlite3VdbeAddOp3(v, OP_IfNot, r1, dest, jumpIfNull!=0);
        VdbeCoverage(v);
        testcase( regFree1==0 );
        testcase( jumpIfNull==0 );
      }
      break;
    }
  }
  sqlite3ReleaseTempReg(pParse, regFree1);
  sqlite3ReleaseTempReg(pParse, regFree2);
}
