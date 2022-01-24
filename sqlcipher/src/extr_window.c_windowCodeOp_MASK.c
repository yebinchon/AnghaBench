#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int csr; int reg; } ;
struct TYPE_14__ {int csr; int reg; } ;
struct TYPE_13__ {int csr; int reg; } ;
struct TYPE_16__ {int eDelete; int /*<<< orphan*/  regArg; TYPE_3__ end; TYPE_2__ start; TYPE_1__ current; int /*<<< orphan*/ * pVdbe; TYPE_5__* pMWin; int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_4__ WindowCodeArg ;
struct TYPE_17__ {scalar_t__ eFrmType; scalar_t__ eStart; scalar_t__ regStartRowid; int regEndRowid; TYPE_8__* pOrderBy; } ;
typedef  TYPE_5__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_18__ {int nExpr; } ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_SAVEPOSITION ; 
 int /*<<< orphan*/  OP_AddImm ; 
 int /*<<< orphan*/  OP_Delete ; 
 int /*<<< orphan*/  OP_Ge ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Gt ; 
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  OP_Le ; 
 int /*<<< orphan*/  OP_Next ; 
 scalar_t__ TK_FOLLOWING ; 
 scalar_t__ TK_RANGE ; 
 scalar_t__ TK_ROWS ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  WINDOW_AGGINVERSE 129 
 int WINDOW_AGGSTEP ; 
#define  WINDOW_RETURN_ROW 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_8__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC19(
 WindowCodeArg *p,                /* Context object */
 int op,                          /* WINDOW_RETURN_ROW, AGGSTEP or AGGINVERSE */
 int regCountdown,                /* Register for OP_IfPos countdown */
 int jumpOnEof                    /* Jump here if stepped cursor reaches EOF */
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

  int lblDone = FUNC11(pParse);
  int addrNextRange = 0;

  /* Special case - WINDOW_AGGINVERSE is always a no-op if the frame
  ** starts with UNBOUNDED PRECEDING. */
  if( op==WINDOW_AGGINVERSE && pMWin->eStart==TK_UNBOUNDED ){
    FUNC1( regCountdown==0 && jumpOnEof==0 );
    return 0;
  }

  if( regCountdown>0 ){
    if( pMWin->eFrmType==TK_RANGE ){
      addrNextRange = FUNC9(v);
      FUNC1( op==WINDOW_AGGINVERSE || op==WINDOW_AGGSTEP );
      if( op==WINDOW_AGGINVERSE ){
        if( pMWin->eStart==TK_FOLLOWING ){
          FUNC15(
              p, OP_Le, p->current.csr, regCountdown, p->start.csr, lblDone
          );
        }else{
          FUNC15(
              p, OP_Ge, p->start.csr, regCountdown, p->current.csr, lblDone
          );
        }
      }else{
        FUNC15(
            p, OP_Gt, p->end.csr, regCountdown, p->current.csr, lblDone
        );
      }
    }else{
      addrIf = FUNC7(v, OP_IfPos, regCountdown, 0, 1);
      FUNC0(v);
    }
  }

  if( op==WINDOW_RETURN_ROW && pMWin->regStartRowid==0 ){
    FUNC13(p, 0);
  }
  addrContinue = FUNC9(v);
  switch( op ){
    case WINDOW_RETURN_ROW:
      csr = p->current.csr;
      reg = p->current.reg;
      FUNC18(p);
      break;

    case WINDOW_AGGINVERSE:
      csr = p->start.csr;
      reg = p->start.reg;
      if( pMWin->regStartRowid ){
        FUNC1( pMWin->regEndRowid );
        FUNC6(v, OP_AddImm, pMWin->regStartRowid, 1);
      }else{
        FUNC14(pParse, pMWin, csr, 1, p->regArg);
      }
      break;

    default:
      FUNC1( op==WINDOW_AGGSTEP );
      csr = p->end.csr;
      reg = p->end.reg;
      if( pMWin->regStartRowid ){
        FUNC1( pMWin->regEndRowid );
        FUNC6(v, OP_AddImm, pMWin->regEndRowid, 1);
      }else{
        FUNC14(pParse, pMWin, csr, 0, p->regArg);
      }
      break;
  }

  if( op==p->eDelete ){
    FUNC5(v, OP_Delete, csr);
    FUNC8(v, OPFLAG_SAVEPOSITION);
  }

  if( jumpOnEof ){
    FUNC6(v, OP_Next, csr, FUNC9(v)+2);
    FUNC0(v);
    ret = FUNC4(v, OP_Goto);
  }else{
    FUNC6(v, OP_Next, csr, FUNC9(v)+1+bPeer);
    FUNC0(v);
    if( bPeer ){
      addrGoto = FUNC4(v, OP_Goto);
    }
  }

  if( bPeer ){
    int nReg = (pMWin->pOrderBy ? pMWin->pOrderBy->nExpr : 0);
    int regTmp = (nReg ? FUNC2(pParse, nReg) : 0);
    FUNC17(p, csr, regTmp);
    FUNC16(pParse, pMWin->pOrderBy, regTmp, reg, addrContinue);
    FUNC3(pParse, regTmp, nReg);
  }

  if( addrNextRange ){
    FUNC6(v, OP_Goto, 0, addrNextRange);
  }
  FUNC12(v, lblDone);
  if( addrGoto ) FUNC10(v, addrGoto);
  if( addrIf ) FUNC10(v, addrIf);
  return ret;
}