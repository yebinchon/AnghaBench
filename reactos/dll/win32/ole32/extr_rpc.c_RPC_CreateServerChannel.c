
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IRpcChannelBuffer_iface; void* dest_context_data; int dest_context; } ;
typedef TYPE_1__ RpcChannelBuffer ;
typedef TYPE_2__ IRpcChannelBuffer ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int ServerRpcChannelBufferVtbl ;

HRESULT RPC_CreateServerChannel(DWORD dest_context, void *dest_context_data, IRpcChannelBuffer **chan)
{
    RpcChannelBuffer *This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->IRpcChannelBuffer_iface.lpVtbl = &ServerRpcChannelBufferVtbl;
    This->refs = 1;
    This->dest_context = dest_context;
    This->dest_context_data = dest_context_data;

    *chan = &This->IRpcChannelBuffer_iface;

    return S_OK;
}
