
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;
typedef int * HTREEITEM ;


 int DestroyWindow (int ) ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int TVGN_CHILD ;
 int TVGN_PARENT ;
 int TVGN_ROOT ;
 scalar_t__ TVI_ROOT ;
 int TVM_GETNEXTITEM ;
 int create_treeview_control (int ) ;
 int fill_tree (int ) ;
 int * hChild ;
 int * hRoot ;
 int ok (int,char*,int *,...) ;

__attribute__((used)) static void test_TVM_GETNEXTITEM(void)
{
    HTREEITEM item;
    HWND hTree;

    hTree = create_treeview_control(0);
    fill_tree(hTree);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_ROOT, 0);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_ROOT, (LPARAM)TVI_ROOT);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_ROOT, (LPARAM)hRoot);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_ROOT, (LPARAM)hChild);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_CHILD, 0);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_CHILD, (LPARAM)hRoot);
    ok(item == hChild, "got %p, expected %p\n", item, hChild);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_CHILD, (LPARAM)TVI_ROOT);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_PARENT, 0);
    ok(item == ((void*)0), "got %p\n", item);

    item = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_PARENT, (LPARAM)hChild);
    ok(item == hRoot, "got %p, expected %p\n", item, hRoot);

    DestroyWindow(hTree);
}
