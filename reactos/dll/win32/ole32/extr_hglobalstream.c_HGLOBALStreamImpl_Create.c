
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IStream_iface; } ;
typedef TYPE_2__ HGLOBALStreamImpl ;


 int GetProcessHeap () ;
 int HGLOBALStreamImplVtbl ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static HGLOBALStreamImpl *HGLOBALStreamImpl_Create(void)
{
    HGLOBALStreamImpl *This;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (This)
    {
        This->IStream_iface.lpVtbl = &HGLOBALStreamImplVtbl;
        This->ref = 1;
    }
    return This;
}
