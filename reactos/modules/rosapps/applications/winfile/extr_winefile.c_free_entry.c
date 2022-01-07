
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iDesktop; int iMalloc; } ;
struct TYPE_5__ {scalar_t__ hicon; scalar_t__ folder; scalar_t__ pidl; } ;
typedef scalar_t__ HICON ;
typedef TYPE_1__ Entry ;


 int DestroyIcon (scalar_t__) ;
 int GetProcessHeap () ;
 TYPE_4__ Globals ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IMalloc_Free (int ,scalar_t__) ;
 int IShellFolder_Release (scalar_t__) ;

__attribute__((used)) static void free_entry(Entry* entry)
{
 if (entry->hicon && entry->hicon!=(HICON)-1)
  DestroyIcon(entry->hicon);

 if (entry->folder && entry->folder!=Globals.iDesktop)
  IShellFolder_Release(entry->folder);

 if (entry->pidl)
  IMalloc_Free(Globals.iMalloc, entry->pidl);

 HeapFree(GetProcessHeap(), 0, entry);
}
