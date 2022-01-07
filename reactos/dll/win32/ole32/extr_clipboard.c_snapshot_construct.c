
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int * data; int seq_no; scalar_t__ ref; TYPE_1__ IDataObject_iface; } ;
typedef TYPE_2__ snapshot ;
typedef int DWORD ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int snapshot_vtable ;

__attribute__((used)) static snapshot *snapshot_construct(DWORD seq_no)
{
    snapshot *This;

    This = HeapAlloc( GetProcessHeap(), 0, sizeof(*This) );
    if (!This) return ((void*)0);

    This->IDataObject_iface.lpVtbl = &snapshot_vtable;
    This->ref = 0;
    This->seq_no = seq_no;
    This->data = ((void*)0);

    return This;
}
