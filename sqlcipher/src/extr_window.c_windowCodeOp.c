
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int csr; int reg; } ;
struct TYPE_14__ {int csr; int reg; } ;
struct TYPE_13__ {int csr; int reg; } ;
struct TYPE_16__ {int eDelete; int regArg; TYPE_3__ end; TYPE_2__ start; TYPE_1__ current; int * pVdbe; TYPE_5__* pMWin; int * pParse; } ;
typedef TYPE_4__ WindowCodeArg ;
struct TYPE_17__ {scalar_t__ eFrmType; scalar_t__ eStart; scalar_t__ regStartRowid; int regEndRowid; TYPE_8__* pOrderBy; } ;
typedef TYPE_5__ Window ;
typedef int Vdbe ;
struct TYPE_18__ {int nExpr; } ;
typedef int Parse ;


 int OPFLAG_SAVEPOSITION ;
 int OP_AddImm ;
 int OP_Delete ;
 int OP_Ge ;
 int OP_Goto ;
 int OP_Gt ;
 int OP_IfPos ;
 int OP_Le ;
 int OP_Next ;
 scalar_t__ TK_FOLLOWING ;
 scalar_t__ TK_RANGE ;
 scalar_t__ TK_ROWS ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;

 int WINDOW_AGGSTEP ;

 int assert (int) ;
 int sqlite3GetTempRange (int *,int) ;
 int sqlite3ReleaseTempRange (int *,int,int) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int ,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int windowAggFinal (TYPE_4__*,int ) ;
 int windowAggStep (int *,TYPE_5__*,int,int,int ) ;
 int windowCodeRangeTest (TYPE_4__*,int ,int,int,int,int) ;
 int windowIfNewPeer (int *,TYPE_8__*,int,int,int) ;
 int windowReadPeerValues (TYPE_4__*,int,int) ;
 int windowReturnOneRow (TYPE_4__*) ;

__attribute__((used)) static int windowCodeOp(
 WindowCodeArg *p,
 int op,
 int regCountdown,
 int jumpOnEof
){
  int csr, reg;
  Parse *pParse = p->pParse;
  Window *pMWin = p->pMWin;
  int ret = 0;
  Vdbe *v = p->pVdbe;
  int addrIf = 0;
  int addrContinue = 0;
  int addrGoto = 0;
  int bPeer = (pMWin->eFrmType!=TK_ROWS);

  int lblDone = sqlite3VdbeMakeLabel(pParse);
  int addrNextRange = 0;



  if( op==129 && pMWin->eStart==TK_UNBOUNDED ){
    assert( regCountdown==0 && jumpOnEof==0 );
    return 0;
  }

  if( regCountdown>0 ){
    if( pMWin->eFrmType==TK_RANGE ){
      addrNextRange = sqlite3VdbeCurrentAddr(v);
      assert( op==129 || op==WINDOW_AGGSTEP );
      if( op==129 ){
        if( pMWin->eStart==TK_FOLLOWING ){
          windowCodeRangeTest(
              p, OP_Le, p->current.csr, regCountdown, p->start.csr, lblDone
          );
        }else{
          windowCodeRangeTest(
              p, OP_Ge, p->start.csr, regCountdown, p->current.csr, lblDone
          );
        }
      }else{
        windowCodeRangeTest(
            p, OP_Gt, p->end.csr, regCountdown, p->current.csr, lblDone
        );
      }
    }else{
      addrIf = sqlite3VdbeAddOp3(v, OP_IfPos, regCountdown, 0, 1);
      VdbeCoverage(v);
    }
  }

  if( op==128 && pMWin->regStartRowid==0 ){
    windowAggFinal(p, 0);
  }
  addrContinue = sqlite3VdbeCurrentAddr(v);
  switch( op ){
    case 128:
      csr = p->current.csr;
      reg = p->current.reg;
      windowReturnOneRow(p);
      break;

    case 129:
      csr = p->start.csr;
      reg = p->start.reg;
      if( pMWin->regStartRowid ){
        assert( pMWin->regEndRowid );
        sqlite3VdbeAddOp2(v, OP_AddImm, pMWin->regStartRowid, 1);
      }else{
        windowAggStep(pParse, pMWin, csr, 1, p->regArg);
      }
      break;

    default:
      assert( op==WINDOW_AGGSTEP );
      csr = p->end.csr;
      reg = p->end.reg;
      if( pMWin->regStartRowid ){
        assert( pMWin->regEndRowid );
        sqlite3VdbeAddOp2(v, OP_AddImm, pMWin->regEndRowid, 1);
      }else{
        windowAggStep(pParse, pMWin, csr, 0, p->regArg);
      }
      break;
  }

  if( op==p->eDelete ){
    sqlite3VdbeAddOp1(v, OP_Delete, csr);
    sqlite3VdbeChangeP5(v, OPFLAG_SAVEPOSITION);
  }

  if( jumpOnEof ){
    sqlite3VdbeAddOp2(v, OP_Next, csr, sqlite3VdbeCurrentAddr(v)+2);
    VdbeCoverage(v);
    ret = sqlite3VdbeAddOp0(v, OP_Goto);
  }else{
    sqlite3VdbeAddOp2(v, OP_Next, csr, sqlite3VdbeCurrentAddr(v)+1+bPeer);
    VdbeCoverage(v);
    if( bPeer ){
      addrGoto = sqlite3VdbeAddOp0(v, OP_Goto);
    }
  }

  if( bPeer ){
    int nReg = (pMWin->pOrderBy ? pMWin->pOrderBy->nExpr : 0);
    int regTmp = (nReg ? sqlite3GetTempRange(pParse, nReg) : 0);
    windowReadPeerValues(p, csr, regTmp);
    windowIfNewPeer(pParse, pMWin->pOrderBy, regTmp, reg, addrContinue);
    sqlite3ReleaseTempRange(pParse, regTmp, nReg);
  }

  if( addrNextRange ){
    sqlite3VdbeAddOp2(v, OP_Goto, 0, addrNextRange);
  }
  sqlite3VdbeResolveLabel(v, lblDone);
  if( addrGoto ) sqlite3VdbeJumpHere(v, addrGoto);
  if( addrIf ) sqlite3VdbeJumpHere(v, addrIf);
  return ret;
}
