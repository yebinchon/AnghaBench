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
struct TYPE_4__ {int pgno; int flags; int /*<<< orphan*/ * pPager; } ;
typedef  int /*<<< orphan*/  Pager ;
typedef  TYPE_1__ DbPage ;

/* Variables and functions */
 int PGHDR_MMAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(DbPage *pPg){
  Pager *pPager;
  FUNC0( pPg!=0 );
  FUNC0( pPg->pgno==1 );
  FUNC0( (pPg->flags & PGHDR_MMAP)==0 ); /* Page1 is never memory mapped */
  pPager = pPg->pPager;
  FUNC2(pPager);
  FUNC3(pPg);
  FUNC1(pPager);
}