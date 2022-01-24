#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* onEndParseBtree ) (int /*<<< orphan*/ ,TYPE_2__*,int) ;int /*<<< orphan*/  (* onBeginParseBtree ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  rk; TYPE_1__ notify; int /*<<< orphan*/  rootpage; } ;
typedef  TYPE_2__ sqliterk_btree ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

int FUNC4(sqliterk_btree *btree)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (btree->notify.onBeginParseBtree) {
        btree->notify.onBeginParseBtree(btree->rk, btree);
    }
    int rc =
        FUNC0(btree, FUNC1(btree->rootpage));
    if (btree->notify.onEndParseBtree) {
        btree->notify.onEndParseBtree(btree->rk, btree, rc);
    }
    return rc;
}