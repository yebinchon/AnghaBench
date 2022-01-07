
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef int USHORT ;
struct TYPE_21__ {int expanded; scalar_t__ down; int * folder; TYPE_3__* pidl; int etype; } ;
struct TYPE_18__ {scalar_t__ cb; } ;
struct TYPE_20__ {TYPE_1__ mkid; } ;
struct TYPE_19__ {TYPE_4__ entry; } ;
struct TYPE_17__ {int iMalloc; int * iDesktop; } ;
typedef int SORT_ORDER ;
typedef TYPE_2__ Root ;
typedef TYPE_3__* LPITEMIDLIST ;
typedef int LPCWSTR ;
typedef scalar_t__ LPBYTE ;
typedef int IShellFolder ;
typedef int HWND ;
typedef int HRESULT ;
typedef int HCURSOR ;
typedef TYPE_4__ Entry ;


 int ET_SHELL ;
 scalar_t__ FAILED (int ) ;
 TYPE_16__ Globals ;
 scalar_t__ IDC_WAIT ;
 int IID_IShellFolder ;
 TYPE_3__* IMalloc_Alloc (int ,scalar_t__) ;
 int IShellFolder_BindToObject (int *,TYPE_3__*,int ,int *,void**) ;
 int LoadCursorW (int ,int ) ;
 int SetCursor (int ) ;
 int TRUE ;
 TYPE_4__* find_entry_shell (TYPE_4__*,TYPE_3__*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,scalar_t__) ;
 int read_directory (TYPE_4__*,int *,int ,int ) ;

__attribute__((used)) static Entry* read_tree_shell(Root* root, LPITEMIDLIST pidl, SORT_ORDER sortOrder, HWND hwnd)
{
 Entry* entry = &root->entry;
 Entry* next;
 LPITEMIDLIST next_pidl = pidl;
 IShellFolder* folder;
 IShellFolder* child = ((void*)0);
 HRESULT hr;

 HCURSOR old_cursor = SetCursor(LoadCursorW(0, (LPCWSTR)IDC_WAIT));

 entry->etype = ET_SHELL;
 folder = Globals.iDesktop;

 while(entry) {
  entry->pidl = next_pidl;
  entry->folder = folder;

  if (!pidl->mkid.cb)
   break;


  next_pidl = IMalloc_Alloc(Globals.iMalloc, pidl->mkid.cb+sizeof(USHORT));
  memcpy(next_pidl, pidl, pidl->mkid.cb);
  ((LPITEMIDLIST)((LPBYTE)next_pidl+pidl->mkid.cb))->mkid.cb = 0;

  hr = IShellFolder_BindToObject(folder, next_pidl, 0, &IID_IShellFolder, (void**)&child);
  if (FAILED(hr))
   break;

  read_directory(entry, ((void*)0), sortOrder, hwnd);

  if (entry->down)
   entry->expanded = TRUE;

  next = find_entry_shell(entry, next_pidl);
  if (!next)
   break;

  folder = child;
  entry = next;


  pidl = (LPITEMIDLIST) ((LPBYTE)pidl+pidl->mkid.cb);
 }

 SetCursor(old_cursor);

 return entry;
}
