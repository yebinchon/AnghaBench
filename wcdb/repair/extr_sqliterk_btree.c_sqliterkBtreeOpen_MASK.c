#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqliterk_pager ;
struct TYPE_6__ {int maxLocal; int minLocal; int maxLeaf; int minLeaf; int /*<<< orphan*/ * rk; int /*<<< orphan*/ * pager; int /*<<< orphan*/  rootpage; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ sqliterk_btree ;
typedef  int /*<<< orphan*/  sqliterk ;

/* Variables and functions */
 int SQLITERK_DAMAGED ; 
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqliterk_btree_type_index ; 
 int /*<<< orphan*/  sqliterk_btree_type_master ; 
 int /*<<< orphan*/  sqliterk_btree_type_table ; 
#define  sqliterk_page_type_interior_index 131 
#define  sqliterk_page_type_interior_table 130 
#define  sqliterk_page_type_leaf_index 129 
#define  sqliterk_page_type_leaf_table 128 

int FUNC7(sqliterk *rk,
                      sqliterk_pager *pager,
                      int rootPageno,
                      sqliterk_btree **btree)
{
    if (!pager || !btree) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk_btree *theBtree = FUNC2(sizeof(sqliterk_btree));
    if (!theBtree) {
        rc = SQLITERK_NOMEM;
        goto sqliterkBtreeOpen_Failed;
    }
    theBtree->pager = pager;

    rc = FUNC3(theBtree->pager, rootPageno, &theBtree->rootpage);
    if (rc != SQLITERK_OK) {
        goto sqliterkBtreeOpen_Failed;
    }
    if (rootPageno == 1) {
        rc = FUNC1(theBtree, "sqlite_master",
                                  sqliterk_btree_type_master);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeOpen_Failed;
        }
    } else {
        switch (FUNC5(theBtree->rootpage)) {
            case sqliterk_page_type_interior_index:
            case sqliterk_page_type_leaf_index:
                theBtree->type = sqliterk_btree_type_index;
                break;
            case sqliterk_page_type_interior_table:
            case sqliterk_page_type_leaf_table:
                theBtree->type = sqliterk_btree_type_table;
                break;
            default:
                rc = SQLITERK_DAMAGED;
                goto sqliterkBtreeOpen_Failed;
        }
    }
    // Save memory
    FUNC4(theBtree->rootpage);

    theBtree->maxLocal =
        (FUNC6(theBtree->pager) - 12) * 64 / 255 - 23;
    theBtree->minLocal =
        (FUNC6(theBtree->pager) - 12) * 32 / 255 - 23;
    theBtree->maxLeaf = FUNC6(theBtree->pager) - 35;
    theBtree->minLeaf =
        (FUNC6(theBtree->pager) - 12) * 32 / 255 - 23;

    theBtree->rk = rk;

    *btree = theBtree;
    return SQLITERK_OK;

sqliterkBtreeOpen_Failed:
    if (theBtree) {
        FUNC0(theBtree);
    }
    *btree = NULL;
    return rc;
}