
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int entry; } ;
struct TYPE_6__ {TYPE_1__ root; } ;
typedef TYPE_2__ ChildWnd ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int free_entries (int *) ;

__attribute__((used)) static void free_child_window(ChildWnd* child)
{
 free_entries(&child->root.entry);
 HeapFree(GetProcessHeap(), 0, child);
}
