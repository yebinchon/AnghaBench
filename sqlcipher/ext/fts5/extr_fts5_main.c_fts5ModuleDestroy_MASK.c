#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pUserData; int /*<<< orphan*/  (* xDestroy ) (int /*<<< orphan*/ ) ;struct TYPE_5__* pNext; struct TYPE_5__* pTok; struct TYPE_5__* pAux; } ;
typedef  TYPE_1__ Fts5TokenizerModule ;
typedef  TYPE_1__ Fts5Global ;
typedef  TYPE_1__ Fts5Auxiliary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *pCtx){
  Fts5TokenizerModule *pTok, *pNextTok;
  Fts5Auxiliary *pAux, *pNextAux;
  Fts5Global *pGlobal = (Fts5Global*)pCtx;

  for(pAux=pGlobal->pAux; pAux; pAux=pNextAux){
    pNextAux = pAux->pNext;
    if( pAux->xDestroy ) pAux->xDestroy(pAux->pUserData);
    FUNC0(pAux);
  }

  for(pTok=pGlobal->pTok; pTok; pTok=pNextTok){
    pNextTok = pTok->pNext;
    if( pTok->xDestroy ) pTok->xDestroy(pTok->pUserData);
    FUNC0(pTok);
  }

  FUNC0(pGlobal);
}