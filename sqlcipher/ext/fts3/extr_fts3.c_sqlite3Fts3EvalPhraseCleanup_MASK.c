#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  aAll; } ;
struct TYPE_7__ {int nToken; TYPE_1__* aToken; TYPE_4__ doclist; } ;
struct TYPE_6__ {scalar_t__ pSegcsr; } ;
typedef  TYPE_2__ Fts3Phrase ;
typedef  int /*<<< orphan*/  Fts3Doclist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(Fts3Phrase *pPhrase){
  if( pPhrase ){
    int i;
    FUNC3(pPhrase->doclist.aAll);
    FUNC0(pPhrase);
    FUNC2(&pPhrase->doclist, 0, sizeof(Fts3Doclist));
    for(i=0; i<pPhrase->nToken; i++){
      FUNC1(pPhrase->aToken[i].pSegcsr);
      pPhrase->aToken[i].pSegcsr = 0;
    }
  }
}