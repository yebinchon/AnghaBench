
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int WCHAR ;
struct TYPE_13__ {int hwnd; scalar_t__ cur; } ;
struct TYPE_15__ {scalar_t__ etype; int down; } ;
struct TYPE_12__ {TYPE_2__ entry; } ;
struct TYPE_14__ {int * root; } ;
struct TYPE_16__ {TYPE_11__ left; int hwnd; TYPE_10__ root; int sortOrder; TYPE_1__ right; } ;
typedef int * LPITEMIDLIST ;
typedef int LPARAM ;
typedef TYPE_2__ Entry ;
typedef TYPE_3__ ChildWnd ;


 scalar_t__ ET_SHELL ;
 int LB_FINDSTRING ;
 int LB_SETCURSEL ;
 int MAX_PATH ;
 int SendMessageW (int ,int ,int,int ) ;
 int TF_ALL ;
 int _MAX_DRIVE ;
 int _wsplitpath (int *,int *,int *,int *,int *) ;
 int get_path (scalar_t__,int *) ;
 int * get_path_pidl (int *,int ) ;
 int insert_entries (TYPE_11__*,int ,int *,int ,int ) ;
 TYPE_2__* read_tree (TYPE_10__*,int *,int *,int *,int ,int ) ;
 int scan_entry (TYPE_3__*,TYPE_2__*,int ,int ) ;
 int set_curdir (TYPE_3__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void refresh_child(ChildWnd* child)
{
 WCHAR path[MAX_PATH], drv[_MAX_DRIVE+1];
 Entry* entry;
 int idx;

 get_path(child->left.cur, path);
 _wsplitpath(path, drv, ((void*)0), ((void*)0), ((void*)0));

 child->right.root = ((void*)0);

 scan_entry(child, &child->root.entry, 0, child->hwnd);

 if (child->root.entry.etype == ET_SHELL)
 {
  LPITEMIDLIST local_pidl = get_path_pidl(path,child->hwnd);
  if (local_pidl)
   entry = read_tree(&child->root, ((void*)0), local_pidl , drv, child->sortOrder, child->hwnd);
  else
   entry = ((void*)0);
 }
 else
  entry = read_tree(&child->root, path, ((void*)0), drv, child->sortOrder, child->hwnd);

 if (!entry)
  entry = &child->root.entry;

 insert_entries(&child->left, child->root.entry.down, ((void*)0), TF_ALL, 0);

 set_curdir(child, entry, 0, child->hwnd);

 idx = SendMessageW(child->left.hwnd, LB_FINDSTRING, 0, (LPARAM)child->left.cur);
 SendMessageW(child->left.hwnd, LB_SETCURSEL, idx, 0);
}
