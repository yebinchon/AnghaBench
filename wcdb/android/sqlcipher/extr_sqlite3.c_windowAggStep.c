
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int iArgCol; scalar_t__ eStart; int regApp; int csrApp; int regAccum; TYPE_8__* pFunc; TYPE_4__* pOwner; scalar_t__ pFilter; struct TYPE_13__* pNextWin; } ;
typedef TYPE_5__ Window ;
typedef int Vdbe ;
struct TYPE_14__ {int funcFlags; scalar_t__ zName; } ;
struct TYPE_11__ {TYPE_2__* pList; } ;
struct TYPE_12__ {TYPE_3__ x; } ;
struct TYPE_10__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_9__ {int pExpr; } ;
typedef int Parse ;
typedef int CollSeq ;


 int OP_AddImm ;
 int OP_AggInverse ;
 int OP_AggStep ;
 int OP_CollSeq ;
 int OP_Column ;
 int OP_Delete ;
 int OP_IdxInsert ;
 int OP_IfNot ;
 int OP_IsNull ;
 int OP_MakeRecord ;
 int OP_SCopy ;
 int OP_SeekGE ;
 int P4_COLLSEQ ;
 int P4_FUNCDEF ;
 int SQLITE_FUNC_MINMAX ;
 int SQLITE_FUNC_NEEDCOLL ;
 int SQLITE_FUNC_WINDOW_SIZE ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageNeverTaken (int *) ;
 int assert (int) ;
 scalar_t__ first_valueName ;
 scalar_t__ lagName ;
 scalar_t__ leadName ;
 scalar_t__ nth_valueName ;
 int * sqlite3ExprNNCollSeq (int *,int ) ;
 int sqlite3GetTempReg (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char const*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int ,int,int) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_8__*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int windowArgCount (TYPE_5__*) ;

__attribute__((used)) static void windowAggStep(
  Parse *pParse,
  Window *pMWin,
  int csr,
  int bInverse,
  int reg,
  int regPartSize
){
  Vdbe *v = sqlite3GetVdbe(pParse);
  Window *pWin;
  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    int flags = pWin->pFunc->funcFlags;
    int regArg;
    int nArg = windowArgCount(pWin);

    if( csr>=0 ){
      int i;
      for(i=0; i<nArg; i++){
        sqlite3VdbeAddOp3(v, OP_Column, csr, pWin->iArgCol+i, reg+i);
      }
      regArg = reg;
      if( flags & SQLITE_FUNC_WINDOW_SIZE ){
        if( nArg==0 ){
          regArg = regPartSize;
        }else{
          sqlite3VdbeAddOp2(v, OP_SCopy, regPartSize, reg+nArg);
        }
        nArg++;
      }
    }else{
      assert( !(flags & SQLITE_FUNC_WINDOW_SIZE) );
      regArg = reg + pWin->iArgCol;
    }

    if( (pWin->pFunc->funcFlags & SQLITE_FUNC_MINMAX)
      && pWin->eStart!=TK_UNBOUNDED
    ){
      int addrIsNull = sqlite3VdbeAddOp1(v, OP_IsNull, regArg);
      VdbeCoverage(v);
      if( bInverse==0 ){
        sqlite3VdbeAddOp2(v, OP_AddImm, pWin->regApp+1, 1);
        sqlite3VdbeAddOp2(v, OP_SCopy, regArg, pWin->regApp);
        sqlite3VdbeAddOp3(v, OP_MakeRecord, pWin->regApp, 2, pWin->regApp+2);
        sqlite3VdbeAddOp2(v, OP_IdxInsert, pWin->csrApp, pWin->regApp+2);
      }else{
        sqlite3VdbeAddOp4Int(v, OP_SeekGE, pWin->csrApp, 0, regArg, 1);
        VdbeCoverageNeverTaken(v);
        sqlite3VdbeAddOp1(v, OP_Delete, pWin->csrApp);
        sqlite3VdbeJumpHere(v, sqlite3VdbeCurrentAddr(v)-2);
      }
      sqlite3VdbeJumpHere(v, addrIsNull);
    }else if( pWin->regApp ){
      assert( pWin->pFunc->zName==nth_valueName
           || pWin->pFunc->zName==first_valueName
      );
      assert( bInverse==0 || bInverse==1 );
      sqlite3VdbeAddOp2(v, OP_AddImm, pWin->regApp+1-bInverse, 1);
    }else if( pWin->pFunc->zName==leadName
           || pWin->pFunc->zName==lagName
    ){

    }else{
      int addrIf = 0;
      if( pWin->pFilter ){
        int regTmp;
        assert( nArg==0 || nArg==pWin->pOwner->x.pList->nExpr );
        assert( nArg || pWin->pOwner->x.pList==0 );
        if( csr>0 ){
          regTmp = sqlite3GetTempReg(pParse);
          sqlite3VdbeAddOp3(v, OP_Column, csr, pWin->iArgCol+nArg,regTmp);
        }else{
          regTmp = regArg + nArg;
        }
        addrIf = sqlite3VdbeAddOp3(v, OP_IfNot, regTmp, 0, 1);
        VdbeCoverage(v);
        if( csr>0 ){
          sqlite3ReleaseTempReg(pParse, regTmp);
        }
      }
      if( pWin->pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL ){
        CollSeq *pColl;
        assert( nArg>0 );
        pColl = sqlite3ExprNNCollSeq(pParse, pWin->pOwner->x.pList->a[0].pExpr);
        sqlite3VdbeAddOp4(v, OP_CollSeq, 0,0,0, (const char*)pColl, P4_COLLSEQ);
      }
      sqlite3VdbeAddOp3(v, bInverse? OP_AggInverse : OP_AggStep,
                        bInverse, regArg, pWin->regAccum);
      sqlite3VdbeAppendP4(v, pWin->pFunc, P4_FUNCDEF);
      sqlite3VdbeChangeP5(v, (u8)nArg);
      if( addrIf ) sqlite3VdbeJumpHere(v, addrIf);
    }
  }
}
