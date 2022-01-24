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
struct TYPE_4__ {int /*<<< orphan*/  aRowidOffset; int /*<<< orphan*/  pDlidx; int /*<<< orphan*/  pNextLeaf; int /*<<< orphan*/  pLeaf; int /*<<< orphan*/  term; } ;
typedef  TYPE_1__ Fts5SegIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Fts5SegIter *pIter){
  FUNC0(&pIter->term);
  FUNC1(pIter->pLeaf);
  FUNC1(pIter->pNextLeaf);
  FUNC2(pIter->pDlidx);
  FUNC4(pIter->aRowidOffset);
  FUNC3(pIter, 0, sizeof(Fts5SegIter));
}