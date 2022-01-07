
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int generated_endpoint ;
typedef int ULONG ;
struct TYPE_9__ {TYPE_1__* protseq; int protseq_entry; int Endpoint; } ;
struct TYPE_8__ {int listen_pipe; } ;
struct TYPE_7__ {int cs; int listeners; int Protseq; } ;
typedef TYPE_1__ RpcServerProtseq ;
typedef TYPE_2__ RpcConnection_np ;
typedef TYPE_3__ RpcConnection ;
typedef scalar_t__ RPC_STATUS ;
typedef int LONG ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int GetCurrentProcessId () ;
 int InterlockedIncrement (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ RPCRT4_CreateConnection (TYPE_3__**,int ,int ,int *,char const*,int *,int *,int *,int *) ;
 scalar_t__ RPC_S_OK ;
 int TRUE ;
 int list_add_head (int *,int *) ;
 int ncalrpc_pipe_name (int ) ;
 scalar_t__ rpcrt4_conn_create_pipe (TYPE_3__*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static RPC_STATUS rpcrt4_protseq_ncalrpc_open_endpoint(RpcServerProtseq* protseq, const char *endpoint)
{
  RPC_STATUS r;
  RpcConnection *Connection;
  char generated_endpoint[22];

  if (!endpoint)
  {
    static LONG lrpc_nameless_id;
    DWORD process_id = GetCurrentProcessId();
    ULONG id = InterlockedIncrement(&lrpc_nameless_id);
    snprintf(generated_endpoint, sizeof(generated_endpoint),
             "LRPC%08x.%08x", process_id, id);
    endpoint = generated_endpoint;
  }

  r = RPCRT4_CreateConnection(&Connection, TRUE, protseq->Protseq, ((void*)0),
                              endpoint, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  if (r != RPC_S_OK)
      return r;

  ((RpcConnection_np*)Connection)->listen_pipe = ncalrpc_pipe_name(Connection->Endpoint);
  r = rpcrt4_conn_create_pipe(Connection);

  EnterCriticalSection(&protseq->cs);
  list_add_head(&protseq->listeners, &Connection->protseq_entry);
  Connection->protseq = protseq;
  LeaveCriticalSection(&protseq->cs);

  return r;
}
