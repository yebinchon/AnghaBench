
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int common; int mgr_event; } ;
typedef TYPE_1__ RpcServerProtseq_np ;
typedef int RpcServerProtseq ;


 int CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static RpcServerProtseq *rpcrt4_protseq_np_alloc(void)
{
    RpcServerProtseq_np *ps = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*ps));
    if (ps)
        ps->mgr_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    return &ps->common;
}
