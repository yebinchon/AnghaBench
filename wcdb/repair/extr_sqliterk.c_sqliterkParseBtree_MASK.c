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
typedef  int /*<<< orphan*/  sqliterk_page ;
typedef  int /*<<< orphan*/  sqliterk_btree ;
struct TYPE_3__ {int /*<<< orphan*/  listen; int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ sqliterk ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(sqliterk *rk, sqliterk_btree *btree)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    sqliterk_page *page = FUNC0(btree);
    int pageno = FUNC3(page);
    if (!page || FUNC4(rk->pager, pageno) != SQLITERK_OK) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    FUNC2(btree, &rk->listen);
    rc = FUNC1(btree);
    return rc;
}