#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ eState; scalar_t__ dbSize; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_READER ; 
 scalar_t__ PAGER_WRITER_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(Pager *pPager, int *pnPage){
  FUNC0( pPager->eState>=PAGER_READER );
  FUNC0( pPager->eState!=PAGER_WRITER_FINISHED );
  *pnPage = (int)pPager->dbSize;
}