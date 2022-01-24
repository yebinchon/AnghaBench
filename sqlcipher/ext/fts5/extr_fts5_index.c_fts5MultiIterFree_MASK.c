#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nSeg; int /*<<< orphan*/  poslist; int /*<<< orphan*/ * aSeg; } ;
typedef  TYPE_1__ Fts5Iter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(Fts5Iter *pIter){
  if( pIter ){
    int i;
    for(i=0; i<pIter->nSeg; i++){
      FUNC1(&pIter->aSeg[i]);
    }
    FUNC0(&pIter->poslist);
    FUNC2(pIter);
  }
}