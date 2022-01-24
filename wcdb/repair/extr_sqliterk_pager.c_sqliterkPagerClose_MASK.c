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
struct TYPE_5__ {scalar_t__ pagecount; scalar_t__ pagesize; struct TYPE_5__* pagesStatus; int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ sqliterk_pager ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(sqliterk_pager *pager)
{
    if (!pager) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    if (pager->file) {
        rc = FUNC1(pager->file);
        pager->file = NULL;
    }
    if (pager->pagesStatus) {
        FUNC2(pager->pagesStatus);
        pager->pagesStatus = NULL;
    }
    pager->pagesize = 0;
    pager->pagecount = 0;

    FUNC0(pager);

    FUNC2(pager);
    return rc;
}