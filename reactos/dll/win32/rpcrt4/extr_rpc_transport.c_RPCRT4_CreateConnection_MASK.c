#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection_ops {TYPE_1__* (* alloc ) () ;} ;
struct TYPE_5__ {int ref; int NextCallId; int /*<<< orphan*/  protseq_entry; int /*<<< orphan*/  conn_pool_entry; int /*<<< orphan*/ * QOS; int /*<<< orphan*/  auth_context_id; int /*<<< orphan*/ * AuthInfo; int /*<<< orphan*/  ctx; int /*<<< orphan*/  MaxTransmissionSize; void* CookieAuth; void* NetworkOptions; void* Endpoint; void* NetworkAddr; struct connection_ops const* ops; int /*<<< orphan*/  server; } ;
typedef  int /*<<< orphan*/  RpcQualityOfService ;
typedef  TYPE_1__ RpcConnection ;
typedef  int /*<<< orphan*/  RpcAuthInfo ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_PROTSEQ_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct connection_ops* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 () ; 

RPC_STATUS FUNC11(RpcConnection** Connection, BOOL server,
    LPCSTR Protseq, LPCSTR NetworkAddr, LPCSTR Endpoint,
    LPCWSTR NetworkOptions, RpcAuthInfo* AuthInfo, RpcQualityOfService *QOS, LPCWSTR CookieAuth)
{
  static LONG next_id;
  const struct connection_ops *ops;
  RpcConnection* NewConnection;

  ops = FUNC9(Protseq);
  if (!ops)
  {
    FUNC0("not supported for protseq %s\n", Protseq);
    return RPC_S_PROTSEQ_NOT_SUPPORTED;
  }

  NewConnection = ops->alloc();
  NewConnection->ref = 1;
  NewConnection->server = server;
  NewConnection->ops = ops;
  NewConnection->NetworkAddr = FUNC2(NetworkAddr);
  NewConnection->Endpoint = FUNC2(Endpoint);
  NewConnection->NetworkOptions = FUNC3(NetworkOptions);
  NewConnection->CookieAuth = FUNC3(CookieAuth);
  NewConnection->MaxTransmissionSize = RPC_MAX_PACKET_SIZE;
  NewConnection->NextCallId = 1;

  FUNC6(&NewConnection->ctx);
  if (AuthInfo) FUNC4(AuthInfo);
  NewConnection->AuthInfo = AuthInfo;
  NewConnection->auth_context_id = FUNC1( &next_id );
  if (QOS) FUNC5(QOS);
  NewConnection->QOS = QOS;

  FUNC8(&NewConnection->conn_pool_entry);
  FUNC8(&NewConnection->protseq_entry);

  FUNC7("connection: %p\n", NewConnection);
  *Connection = NewConnection;

  return RPC_S_OK;
}