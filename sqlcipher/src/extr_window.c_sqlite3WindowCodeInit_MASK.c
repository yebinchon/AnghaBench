#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int regPart; int regOne; int regStartRowid; int regEndRowid; int csrApp; int iEphCsr; scalar_t__ eStart; int regApp; TYPE_7__* pFunc; TYPE_3__* pOwner; struct TYPE_17__* pNextWin; scalar_t__ eExclude; TYPE_1__* pPartition; } ;
typedef  TYPE_4__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_20__ {int funcFlags; char* zName; } ;
struct TYPE_19__ {int* aSortOrder; } ;
struct TYPE_18__ {int nMem; int /*<<< orphan*/  nTab; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pList; } ;
struct TYPE_16__ {TYPE_2__ x; } ;
struct TYPE_14__ {int nExpr; } ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ KeyInfo ;
typedef  TYPE_7__ FuncDef ;
typedef  int /*<<< orphan*/  ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_OpenDup ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int SQLITE_FUNC_MINMAX ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ first_valueName ; 
 scalar_t__ lagName ; 
 scalar_t__ leadName ; 
 scalar_t__ nth_valueName ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*) ; 
 TYPE_6__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 

void FUNC6(Parse *pParse, Window *pMWin){
  Window *pWin;
  Vdbe *v = FUNC1(pParse);

  /* Allocate registers to use for PARTITION BY values, if any. Initialize
  ** said registers to NULL.  */
  if( pMWin->pPartition ){
    int nExpr = pMWin->pPartition->nExpr;
    pMWin->regPart = pParse->nMem+1;
    pParse->nMem += nExpr;
    FUNC4(v, OP_Null, 0, pMWin->regPart, pMWin->regPart+nExpr-1);
  }

  pMWin->regOne = ++pParse->nMem;
  FUNC3(v, OP_Integer, 1, pMWin->regOne);

  if( pMWin->eExclude ){
    pMWin->regStartRowid = ++pParse->nMem;
    pMWin->regEndRowid = ++pParse->nMem;
    pMWin->csrApp = pParse->nTab++;
    FUNC3(v, OP_Integer, 1, pMWin->regStartRowid);
    FUNC3(v, OP_Integer, 0, pMWin->regEndRowid);
    FUNC3(v, OP_OpenDup, pMWin->csrApp, pMWin->iEphCsr);
    return;
  }

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *p = pWin->pFunc;
    if( (p->funcFlags & SQLITE_FUNC_MINMAX) && pWin->eStart!=TK_UNBOUNDED ){
      /* The inline versions of min() and max() require a single ephemeral
      ** table and 3 registers. The registers are used as follows:
      **
      **   regApp+0: slot to copy min()/max() argument to for MakeRecord
      **   regApp+1: integer value used to ensure keys are unique
      **   regApp+2: output of MakeRecord
      */
      ExprList *pList = pWin->pOwner->x.pList;
      KeyInfo *pKeyInfo = FUNC2(pParse, pList, 0, 0);
      pWin->csrApp = pParse->nTab++;
      pWin->regApp = pParse->nMem+1;
      pParse->nMem += 3;
      if( pKeyInfo && pWin->pFunc->zName[1]=='i' ){
        FUNC0( pKeyInfo->aSortOrder[0]==0 );
        pKeyInfo->aSortOrder[0] = 1;
      }
      FUNC3(v, OP_OpenEphemeral, pWin->csrApp, 2);
      FUNC5(v, pKeyInfo, P4_KEYINFO);
      FUNC3(v, OP_Integer, 0, pWin->regApp+1);
    }
    else if( p->zName==nth_valueName || p->zName==first_valueName ){
      /* Allocate two registers at pWin->regApp. These will be used to
      ** store the start and end index of the current frame.  */
      pWin->regApp = pParse->nMem+1;
      pWin->csrApp = pParse->nTab++;
      pParse->nMem += 2;
      FUNC3(v, OP_OpenDup, pWin->csrApp, pMWin->iEphCsr);
    }
    else if( p->zName==leadName || p->zName==lagName ){
      pWin->csrApp = pParse->nTab++;
      FUNC3(v, OP_OpenDup, pWin->csrApp, pMWin->iEphCsr);
    }
  }
}