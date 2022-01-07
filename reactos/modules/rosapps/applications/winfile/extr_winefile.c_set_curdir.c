
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_12__ {TYPE_3__* cur; TYPE_3__* root; } ;
struct TYPE_11__ {TYPE_3__* cur; } ;
struct TYPE_14__ {scalar_t__ hwnd; int path; TYPE_2__ right; TYPE_1__ left; } ;
struct TYPE_13__ {int scanned; struct TYPE_13__* down; } ;
typedef int HWND ;
typedef TYPE_3__ Entry ;
typedef TYPE_4__ ChildWnd ;


 int MAX_PATH ;
 scalar_t__ SetCurrentDirectoryW (char*) ;
 int SetWindowTextW (scalar_t__,char*) ;
 int get_path (TYPE_3__*,char*) ;
 int lstrcpyW (int ,char*) ;
 int refresh_right_pane (TYPE_4__*) ;
 int scan_entry (TYPE_4__*,TYPE_3__*,int,int ) ;
 int set_space_status () ;

__attribute__((used)) static void set_curdir(ChildWnd* child, Entry* entry, int idx, HWND hwnd)
{
 WCHAR path[MAX_PATH];

 if (!entry)
  return;

 path[0] = '\0';

 child->left.cur = entry;

 child->right.root = entry->down? entry->down: entry;
 child->right.cur = entry;

 if (!entry->scanned)
  scan_entry(child, entry, idx, hwnd);
 else
  refresh_right_pane(child);

 get_path(entry, path);
 lstrcpyW(child->path, path);

 if (child->hwnd)
  SetWindowTextW(child->hwnd, path);

 if (path[0])
  if (SetCurrentDirectoryW(path))
   set_space_status();
}
