#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TVGN_CHILD ; 
 int /*<<< orphan*/  TVGN_PARENT ; 
 int /*<<< orphan*/  TVGN_ROOT ; 
 scalar_t__ TVI_ROOT ; 
 int /*<<< orphan*/  TVM_GETNEXTITEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hChild ; 
 int /*<<< orphan*/ * hRoot ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    HTREEITEM item;
    HWND hTree;

    hTree = FUNC2(0);
    FUNC3(hTree);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_ROOT, 0);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_ROOT, (LPARAM)TVI_ROOT);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_ROOT, (LPARAM)hRoot);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_ROOT, (LPARAM)hChild);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_CHILD, 0);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_CHILD, (LPARAM)hRoot);
    FUNC4(item == hChild, "got %p, expected %p\n", item, hChild);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_CHILD, (LPARAM)TVI_ROOT);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_PARENT, 0);
    FUNC4(item == NULL, "got %p\n", item);

    item = (HTREEITEM)FUNC1(hTree, TVM_GETNEXTITEM, TVGN_PARENT, (LPARAM)hChild);
    FUNC4(item == hRoot, "got %p, expected %p\n", item, hRoot);

    FUNC0(hTree);
}