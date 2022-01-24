#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pBt; } ;
struct TYPE_6__ {int /*<<< orphan*/  pPager; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(Btree *p, int mxPage){
  int n;
  FUNC0(p);
  n = FUNC2(p->pBt->pPager, mxPage);
  FUNC1(p);
  return n;
}