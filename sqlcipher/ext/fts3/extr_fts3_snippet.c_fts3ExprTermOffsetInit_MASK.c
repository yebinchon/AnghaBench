#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  iTerm; TYPE_3__* aTerm; int /*<<< orphan*/  iCol; int /*<<< orphan*/  pCsr; } ;
typedef  TYPE_2__ TermOffsetCtx ;
struct TYPE_9__ {int iOff; char* pList; int iPos; } ;
typedef  TYPE_3__ TermOffset ;
struct TYPE_10__ {TYPE_1__* pPhrase; } ;
struct TYPE_7__ {int nToken; } ;
typedef  TYPE_4__ Fts3Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC4(Fts3Expr *pExpr, int iPhrase, void *ctx){
  TermOffsetCtx *p = (TermOffsetCtx *)ctx;
  int nTerm;                      /* Number of tokens in phrase */
  int iTerm;                      /* For looping through nTerm phrase terms */
  char *pList;                    /* Pointer to position list for phrase */
  int iPos = 0;                   /* First position in position-list */
  int rc;

  FUNC0(iPhrase);
  rc = FUNC3(p->pCsr, pExpr, p->iCol, &pList);
  nTerm = pExpr->pPhrase->nToken;
  if( pList ){
    FUNC2(&pList, &iPos);
    FUNC1( iPos>=0 );
  }

  for(iTerm=0; iTerm<nTerm; iTerm++){
    TermOffset *pT = &p->aTerm[p->iTerm++];
    pT->iOff = nTerm-iTerm-1;
    pT->pList = pList;
    pT->iPos = iPos;
  }

  return rc;
}