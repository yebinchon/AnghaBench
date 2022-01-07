
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IFileDialogEvents_iface; } ;
typedef TYPE_1__ IFileDialogEventsImpl ;
typedef TYPE_2__ IFileDialogEvents ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int vt_IFileDialogEvents ;

__attribute__((used)) static IFileDialogEvents *IFileDialogEvents_Constructor(void)
{
    IFileDialogEventsImpl *This;

    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IFileDialogEventsImpl));
    This->IFileDialogEvents_iface.lpVtbl = &vt_IFileDialogEvents;
    This->ref = 1;

    return &This->IFileDialogEvents_iface;
}
