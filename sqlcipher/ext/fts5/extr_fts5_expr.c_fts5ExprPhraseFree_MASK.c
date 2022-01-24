#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nSpace; } ;
struct TYPE_7__ {int nTerm; TYPE_3__ poslist; int /*<<< orphan*/  pIter; struct TYPE_7__* pSynonym; struct TYPE_7__* zTerm; struct TYPE_7__* aTerm; } ;
typedef  TYPE_1__ Fts5ExprTerm ;
typedef  TYPE_1__ Fts5ExprPhrase ;
typedef  TYPE_3__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(Fts5ExprPhrase *pPhrase){
  if( pPhrase ){
    int i;
    for(i=0; i<pPhrase->nTerm; i++){
      Fts5ExprTerm *pSyn;
      Fts5ExprTerm *pNext;
      Fts5ExprTerm *pTerm = &pPhrase->aTerm[i];
      FUNC2(pTerm->zTerm);
      FUNC1(pTerm->pIter);
      for(pSyn=pTerm->pSynonym; pSyn; pSyn=pNext){
        pNext = pSyn->pSynonym;
        FUNC1(pSyn->pIter);
        FUNC0((Fts5Buffer*)&pSyn[1]);
        FUNC2(pSyn);
      }
    }
    if( pPhrase->poslist.nSpace>0 ) FUNC0(&pPhrase->poslist);
    FUNC2(pPhrase);
  }
}