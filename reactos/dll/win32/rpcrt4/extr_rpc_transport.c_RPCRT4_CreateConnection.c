
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct connection_ops {TYPE_1__* (* alloc ) () ;} ;
struct TYPE_5__ {int ref; int NextCallId; int protseq_entry; int conn_pool_entry; int * QOS; int auth_context_id; int * AuthInfo; int ctx; int MaxTransmissionSize; void* CookieAuth; void* NetworkOptions; void* Endpoint; void* NetworkAddr; struct connection_ops const* ops; int server; } ;
typedef int RpcQualityOfService ;
typedef TYPE_1__ RpcConnection ;
typedef int RpcAuthInfo ;
typedef int RPC_STATUS ;
typedef int LPCWSTR ;
typedef int LPCSTR ;
typedef int LONG ;
typedef int BOOL ;


 int FIXME (char*,int ) ;
 int InterlockedIncrement (int *) ;
 void* RPCRT4_strdupA (int ) ;
 void* RPCRT4_strdupW (int ) ;
 int RPC_MAX_PACKET_SIZE ;
 int RPC_S_OK ;
 int RPC_S_PROTSEQ_NOT_SUPPORTED ;
 int RpcAuthInfo_AddRef (int *) ;
 int RpcQualityOfService_AddRef (int *) ;
 int SecInvalidateHandle (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int list_init (int *) ;
 struct connection_ops* rpcrt4_get_conn_protseq_ops (int ) ;
 TYPE_1__* stub1 () ;

RPC_STATUS RPCRT4_CreateConnection(RpcConnection** Connection, BOOL server,
    LPCSTR Protseq, LPCSTR NetworkAddr, LPCSTR Endpoint,
    LPCWSTR NetworkOptions, RpcAuthInfo* AuthInfo, RpcQualityOfService *QOS, LPCWSTR CookieAuth)
{
  static LONG next_id;
  const struct connection_ops *ops;
  RpcConnection* NewConnection;

  ops = rpcrt4_get_conn_protseq_ops(Protseq);
  if (!ops)
  {
    FIXME("not supported for protseq %s\n", Protseq);
    return RPC_S_PROTSEQ_NOT_SUPPORTED;
  }

  NewConnection = ops->alloc();
  NewConnection->ref = 1;
  NewConnection->server = server;
  NewConnection->ops = ops;
  NewConnection->NetworkAddr = RPCRT4_strdupA(NetworkAddr);
  NewConnection->Endpoint = RPCRT4_strdupA(Endpoint);
  NewConnection->NetworkOptions = RPCRT4_strdupW(NetworkOptions);
  NewConnection->CookieAuth = RPCRT4_strdupW(CookieAuth);
  NewConnection->MaxTransmissionSize = RPC_MAX_PACKET_SIZE;
  NewConnection->NextCallId = 1;

  SecInvalidateHandle(&NewConnection->ctx);
  if (AuthInfo) RpcAuthInfo_AddRef(AuthInfo);
  NewConnection->AuthInfo = AuthInfo;
  NewConnection->auth_context_id = InterlockedIncrement( &next_id );
  if (QOS) RpcQualityOfService_AddRef(QOS);
  NewConnection->QOS = QOS;

  list_init(&NewConnection->conn_pool_entry);
  list_init(&NewConnection->protseq_entry);

  TRACE("connection: %p\n", NewConnection);
  *Connection = NewConnection;

  return RPC_S_OK;
}
