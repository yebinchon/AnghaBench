#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  regArg; int /*<<< orphan*/ * pVdbe; TYPE_2__* pMWin; int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_1__ WindowCodeArg ;
struct TYPE_9__ {int csrApp; int iEphCsr; int regAccum; int regStartRowid; int regEndRowid; scalar_t__ eExclude; TYPE_7__* pOrderBy; struct TYPE_9__* pNextWin; } ;
typedef  TYPE_2__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_10__ {int nExpr; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Eq ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Gt ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_Rowid ; 
 int /*<<< orphan*/  OP_SeekGE ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 scalar_t__ TK_CURRENT ; 
 scalar_t__ TK_NO ; 
 scalar_t__ TK_TIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC18(WindowCodeArg *p){
  Window *pWin;
  Parse *pParse = p->pParse;
  Window *pMWin = p->pMWin;
  Vdbe *v = p->pVdbe;

  int regCRowid = 0;              /* Current rowid value */
  int regCPeer = 0;               /* Current peer values */
  int regRowid = 0;               /* AggStep rowid value */
  int regPeer = 0;                /* AggStep peer values */

  int nPeer;
  int lblNext;
  int lblBrk;
  int addrNext;
  int csr = pMWin->csrApp;

  nPeer = (pMWin->pOrderBy ? pMWin->pOrderBy->nExpr : 0);

  lblNext = FUNC13(pParse);
  lblBrk = FUNC13(pParse);

  regCRowid = FUNC4(pParse);
  regRowid = FUNC4(pParse);
  if( nPeer ){
    regCPeer = FUNC3(pParse, nPeer);
    regPeer = FUNC3(pParse, nPeer);
  }

  FUNC8(v, OP_Rowid, pMWin->iEphCsr, regCRowid);
  FUNC17(p, pMWin->iEphCsr, regCPeer);

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FUNC8(v, OP_Null, 0, pWin->regAccum);
  }

  FUNC9(v, OP_SeekGE, csr, lblBrk, pMWin->regStartRowid);
  FUNC0(v);
  addrNext = FUNC11(v);
  FUNC8(v, OP_Rowid, csr, regRowid);
  FUNC9(v, OP_Gt, pMWin->regEndRowid, lblBrk, regRowid);
  FUNC2(v);

  if( pMWin->eExclude==TK_CURRENT ){
    FUNC9(v, OP_Eq, regCRowid, lblNext, regRowid);
    FUNC2(v);
  }else if( pMWin->eExclude!=TK_NO ){
    int addr;
    int addrEq = 0;
    KeyInfo *pKeyInfo = 0;

    if( pMWin->pOrderBy ){
      pKeyInfo = FUNC5(pParse, pMWin->pOrderBy, 0, 0);
    }
    if( pMWin->eExclude==TK_TIES ){
      addrEq = FUNC9(v, OP_Eq, regCRowid, 0, regRowid);
      FUNC2(v);
    }
    if( pKeyInfo ){
      FUNC17(p, csr, regPeer);
      FUNC9(v, OP_Compare, regPeer, regCPeer, nPeer);
      FUNC10(v, (void*)pKeyInfo, P4_KEYINFO);
      addr = FUNC11(v)+1;
      FUNC9(v, OP_Jump, addr, lblNext, addr);
      FUNC1(v);
    }else{
      FUNC8(v, OP_Goto, 0, lblNext);
    }
    if( addrEq ) FUNC12(v, addrEq);
  }

  FUNC16(pParse, pMWin, csr, 0, p->regArg);

  FUNC14(v, lblNext);
  FUNC8(v, OP_Next, csr, addrNext);
  FUNC0(v);
  FUNC12(v, addrNext-1);
  FUNC12(v, addrNext+1);
  FUNC7(pParse, regRowid);
  FUNC7(pParse, regCRowid);
  if( nPeer ){
    FUNC6(pParse, regPeer, nPeer);
    FUNC6(pParse, regCPeer, nPeer);
  }

  FUNC15(p, 1);
}