
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry; int gdiFont; } ;
typedef TYPE_1__* PHFONTItem ;


 int DeleteObject (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int list_remove (int *) ;

__attribute__((used)) static void HFONTItem_Delete(PHFONTItem item)
{
  DeleteObject(item->gdiFont);
  list_remove(&item->entry);
  HeapFree(GetProcessHeap(), 0, item);
}
