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
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/ * rk; int /*<<< orphan*/ * userInfo; int /*<<< orphan*/ * pager; int /*<<< orphan*/ * rootpage; struct TYPE_4__* name; } ;
typedef  TYPE_1__ sqliterk_btree ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(sqliterk_btree *btree)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (btree->name) {
        FUNC0(btree->name);
        btree->name = NULL;
    }
    if (btree->rootpage) {
        FUNC1(btree->rootpage);
        btree->rootpage = NULL;
    }
    btree->pager = NULL;
    btree->userInfo = NULL;
    btree->rk = NULL;
    btree->type = 0;
    FUNC0(btree);
    return SQLITERK_OK;
}