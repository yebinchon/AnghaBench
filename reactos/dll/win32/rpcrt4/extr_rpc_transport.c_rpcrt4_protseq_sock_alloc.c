
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WSADATA ;
struct TYPE_3__ {int common; int mgr_event; } ;
typedef TYPE_1__ RpcServerProtseq_sock ;
typedef int RpcServerProtseq ;
typedef scalar_t__ BOOL ;


 int CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int MAKEWORD (int,int) ;
 scalar_t__ TRUE ;
 int WSAStartup (int ,int *) ;

__attribute__((used)) static RpcServerProtseq *rpcrt4_protseq_sock_alloc(void)
{
    RpcServerProtseq_sock *ps = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*ps));
    if (ps)
    {
        static BOOL wsa_inited;
        if (!wsa_inited)
        {
            WSADATA wsadata;
            WSAStartup(MAKEWORD(2, 2), &wsadata);


            wsa_inited = TRUE;
        }
        ps->mgr_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    }
    return &ps->common;
}
