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
typedef  int /*<<< orphan*/  sqliterk_btree ;
struct TYPE_5__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ sqliterk ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ sqliterk_status_unchecked ; 

int FUNC4(sqliterk *rk, int pageno)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    if (FUNC2(rk->pager, pageno) !=
        sqliterk_status_unchecked) {
        return SQLITERK_OK;
    }
    int rc = SQLITERK_OK;
    sqliterk_btree *btree = NULL;
    rc = FUNC1(rk, rk->pager, pageno, &btree);
    if (rc != SQLITERK_OK) {
        goto sqliterkParsePage_End;
    }
    rc = FUNC3(rk, btree);
sqliterkParsePage_End:
    if (btree) {
        FUNC0(btree);
    }
    return rc;
}