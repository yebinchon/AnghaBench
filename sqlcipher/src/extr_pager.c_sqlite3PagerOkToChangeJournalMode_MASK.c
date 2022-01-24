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
struct TYPE_4__ {scalar_t__ eState; scalar_t__ journalOff; int /*<<< orphan*/  jfd; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(Pager *pPager){
  FUNC1( FUNC2(pPager) );
  if( pPager->eState>=PAGER_WRITER_CACHEMOD ) return 0;
  if( FUNC0(FUNC3(pPager->jfd) && pPager->journalOff>0) ) return 0;
  return 1;
}