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
struct TYPE_4__ {int pageSize; int nExtra; int /*<<< orphan*/  pPCache; } ;
typedef  int /*<<< orphan*/  PgHdr ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(Pager *pPager){
  int perPageSize = pPager->pageSize + pPager->nExtra + sizeof(PgHdr)
                                     + 5*sizeof(void*);
  return perPageSize*FUNC1(pPager->pPCache)
           + FUNC0(pPager)
           + pPager->pageSize;
}