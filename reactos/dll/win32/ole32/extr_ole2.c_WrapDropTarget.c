
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; TYPE_1__ IDropTarget_iface; int hwnd; } ;
typedef TYPE_1__ IDropTarget ;
typedef int HWND ;
typedef TYPE_2__ DropTargetWrapper ;


 int DropTargetWrapperVTbl ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static IDropTarget* WrapDropTarget( HWND hwnd )
{
    DropTargetWrapper* This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));

    if (This)
    {
        This->IDropTarget_iface.lpVtbl = &DropTargetWrapperVTbl;
        This->hwnd = hwnd;
        This->refs = 1;
    }
    return &This->IDropTarget_iface;
}
