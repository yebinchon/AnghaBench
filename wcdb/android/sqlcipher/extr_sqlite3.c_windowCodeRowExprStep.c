
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ eStart; scalar_t__ eEnd; int iEphCsr; scalar_t__ pStart; scalar_t__ pEnd; } ;
typedef TYPE_1__ Window ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_22__ {int nMem; int nTab; } ;
struct TYPE_21__ {TYPE_1__* pWin; } ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;


 int OP_Copy ;
 int OP_Ge ;
 int OP_Goto ;
 int OP_IfPos ;
 int OP_Le ;
 int OP_Next ;
 int OP_Once ;
 int OP_OpenDup ;
 int OP_ResetSorter ;
 int OP_Return ;
 int OP_Rewind ;
 int OP_Subtract ;
 scalar_t__ TK_CURRENT ;
 scalar_t__ TK_FOLLOWING ;
 scalar_t__ TK_PRECEDING ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageAlwaysTaken (int *) ;
 int VdbeCoverageNeverNull (int *) ;
 int VdbeCoverageNeverTaken (int *) ;
 int assert (int) ;
 int sqlite3ExprCode (TYPE_3__*,scalar_t__,int) ;
 int * sqlite3GetVdbe (TYPE_3__*) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_3__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int windowAggFinal (TYPE_3__*,TYPE_1__*,int ) ;
 int windowAggStep (TYPE_3__*,TYPE_1__*,int,int,int,int) ;
 int windowCheckIntValue (TYPE_3__*,int,int) ;
 int windowInitAccum (TYPE_3__*,TYPE_1__*) ;
 int windowPartitionCache (TYPE_3__*,TYPE_2__*,int *,int,int,int*) ;
 int windowReturnOneRow (TYPE_3__*,TYPE_1__*,int,int) ;

__attribute__((used)) static void windowCodeRowExprStep(
  Parse *pParse,
  Select *p,
  WhereInfo *pWInfo,
  int regGosub,
  int addrGosub
){
  Window *pMWin = p->pWin;
  Vdbe *v = sqlite3GetVdbe(pParse);
  int regFlushPart;
  int lblFlushPart;
  int lblFlushDone;

  int regArg;
  int addr;
  int csrStart = pParse->nTab++;
  int csrEnd = pParse->nTab++;
  int regStart;
  int regEnd;
  int addrGoto;
  int addrTop;
  int addrIfPos1 = 0;
  int addrIfPos2 = 0;
  int regSize = 0;

  assert( pMWin->eStart==TK_PRECEDING
       || pMWin->eStart==TK_CURRENT
       || pMWin->eStart==TK_FOLLOWING
       || pMWin->eStart==TK_UNBOUNDED
  );
  assert( pMWin->eEnd==TK_FOLLOWING
       || pMWin->eEnd==TK_CURRENT
       || pMWin->eEnd==TK_UNBOUNDED
       || pMWin->eEnd==TK_PRECEDING
  );


  regFlushPart = ++pParse->nMem;
  lblFlushPart = sqlite3VdbeMakeLabel(pParse);
  lblFlushDone = sqlite3VdbeMakeLabel(pParse);

  regStart = ++pParse->nMem;
  regEnd = ++pParse->nMem;

  windowPartitionCache(pParse, p, pWInfo, regFlushPart, lblFlushPart, &regSize);

  addrGoto = sqlite3VdbeAddOp0(v, OP_Goto);


  sqlite3VdbeResolveLabel(v, lblFlushPart);
  sqlite3VdbeAddOp2(v, OP_Once, 0, sqlite3VdbeCurrentAddr(v)+3);
  VdbeCoverage(v);
  VdbeComment((v, "Flush_partition subroutine"));
  sqlite3VdbeAddOp2(v, OP_OpenDup, csrStart, pMWin->iEphCsr);
  sqlite3VdbeAddOp2(v, OP_OpenDup, csrEnd, pMWin->iEphCsr);



  if( pMWin->pStart ){
    sqlite3ExprCode(pParse, pMWin->pStart, regStart);
    windowCheckIntValue(pParse, regStart, 0);
  }
  if( pMWin->pEnd ){
    sqlite3ExprCode(pParse, pMWin->pEnd, regEnd);
    windowCheckIntValue(pParse, regEnd, 1);
  }
  if( pMWin->pEnd && pMWin->eStart==TK_FOLLOWING ){
    assert( pMWin->pStart!=0 );
    assert( pMWin->eEnd==TK_FOLLOWING );
    sqlite3VdbeAddOp3(v, OP_Ge, regStart, sqlite3VdbeCurrentAddr(v)+2, regEnd);
    VdbeCoverageNeverNull(v);
    sqlite3VdbeAddOp2(v, OP_Copy, regSize, regStart);
    sqlite3VdbeAddOp3(v, OP_Subtract, regStart, regEnd, regEnd);
  }

  if( pMWin->pStart && pMWin->eEnd==TK_PRECEDING ){
    assert( pMWin->pEnd!=0 );
    assert( pMWin->eStart==TK_PRECEDING );
    sqlite3VdbeAddOp3(v, OP_Le, regStart, sqlite3VdbeCurrentAddr(v)+3, regEnd);
    VdbeCoverageNeverNull(v);
    sqlite3VdbeAddOp2(v, OP_Copy, regSize, regStart);
    sqlite3VdbeAddOp2(v, OP_Copy, regSize, regEnd);
  }


  regArg = windowInitAccum(pParse, pMWin);

  sqlite3VdbeAddOp2(v, OP_Rewind, pMWin->iEphCsr, lblFlushDone);
  VdbeCoverage(v);
  sqlite3VdbeAddOp2(v, OP_Rewind, csrStart, lblFlushDone);
  VdbeCoverageNeverTaken(v);
  sqlite3VdbeChangeP5(v, 1);
  sqlite3VdbeAddOp2(v, OP_Rewind, csrEnd, lblFlushDone);
  VdbeCoverageNeverTaken(v);
  sqlite3VdbeChangeP5(v, 1);




  addrTop = sqlite3VdbeCurrentAddr(v);
  if( pMWin->eEnd==TK_PRECEDING ){
    addrIfPos1 = sqlite3VdbeAddOp3(v, OP_IfPos, regEnd, 0 , 1);
    VdbeCoverage(v);
  }
  sqlite3VdbeAddOp2(v, OP_Next, csrEnd, sqlite3VdbeCurrentAddr(v)+2);
  VdbeCoverage(v);
  addr = sqlite3VdbeAddOp0(v, OP_Goto);
  windowAggStep(pParse, pMWin, csrEnd, 0, regArg, regSize);
  if( pMWin->eEnd==TK_UNBOUNDED ){
    sqlite3VdbeAddOp2(v, OP_Goto, 0, addrTop);
    sqlite3VdbeJumpHere(v, addr);
    addrTop = sqlite3VdbeCurrentAddr(v);
  }else{
    sqlite3VdbeJumpHere(v, addr);
    if( pMWin->eEnd==TK_PRECEDING ){
      sqlite3VdbeJumpHere(v, addrIfPos1);
    }
  }

  if( pMWin->eEnd==TK_FOLLOWING ){
    addrIfPos1 = sqlite3VdbeAddOp3(v, OP_IfPos, regEnd, 0 , 1);
    VdbeCoverage(v);
  }
  if( pMWin->eStart==TK_FOLLOWING ){
    addrIfPos2 = sqlite3VdbeAddOp3(v, OP_IfPos, regStart, 0 , 1);
    VdbeCoverage(v);
  }
  windowAggFinal(pParse, pMWin, 0);
  windowReturnOneRow(pParse, pMWin, regGosub, addrGosub);
  sqlite3VdbeAddOp2(v, OP_Next, pMWin->iEphCsr, sqlite3VdbeCurrentAddr(v)+2);
  VdbeCoverage(v);
  sqlite3VdbeAddOp2(v, OP_Goto, 0, lblFlushDone);
  if( pMWin->eStart==TK_FOLLOWING ){
    sqlite3VdbeJumpHere(v, addrIfPos2);
  }

  if( pMWin->eStart==TK_CURRENT
   || pMWin->eStart==TK_PRECEDING
   || pMWin->eStart==TK_FOLLOWING
  ){
    int lblSkipInverse = sqlite3VdbeMakeLabel(pParse);;
    if( pMWin->eStart==TK_PRECEDING ){
      sqlite3VdbeAddOp3(v, OP_IfPos, regStart, lblSkipInverse, 1);
      VdbeCoverage(v);
    }
    if( pMWin->eStart==TK_FOLLOWING ){
      sqlite3VdbeAddOp2(v, OP_Next, csrStart, sqlite3VdbeCurrentAddr(v)+2);
      VdbeCoverage(v);
      sqlite3VdbeAddOp2(v, OP_Goto, 0, lblSkipInverse);
    }else{
      sqlite3VdbeAddOp2(v, OP_Next, csrStart, sqlite3VdbeCurrentAddr(v)+1);
      VdbeCoverageAlwaysTaken(v);
    }
    windowAggStep(pParse, pMWin, csrStart, 1, regArg, regSize);
    sqlite3VdbeResolveLabel(v, lblSkipInverse);
  }
  if( pMWin->eEnd==TK_FOLLOWING ){
    sqlite3VdbeJumpHere(v, addrIfPos1);
  }
  sqlite3VdbeAddOp2(v, OP_Goto, 0, addrTop);


  sqlite3VdbeResolveLabel(v, lblFlushDone);
  sqlite3VdbeAddOp1(v, OP_ResetSorter, pMWin->iEphCsr);
  sqlite3VdbeAddOp1(v, OP_Return, regFlushPart);
  VdbeComment((v, "end flush_partition subroutine"));


  sqlite3VdbeJumpHere(v, addrGoto);
}
