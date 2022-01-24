#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* FromConn; void* Endpoint; void* NetworkAddr; void* Protseq; } ;
struct TYPE_7__ {int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  NetworkAddr; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ RpcConnection ;
typedef  TYPE_2__ RpcBinding ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

RPC_STATUS FUNC4(RpcBinding** Binding, RpcConnection* Connection)
{
  RpcBinding* NewBinding;
  FUNC2("(RpcBinding == ^%p, Connection == ^%p)\n", Binding, Connection);

  FUNC0(&NewBinding, Connection->server);
  NewBinding->Protseq = FUNC1(FUNC3(Connection));
  NewBinding->NetworkAddr = FUNC1(Connection->NetworkAddr);
  NewBinding->Endpoint = FUNC1(Connection->Endpoint);
  NewBinding->FromConn = Connection;

  FUNC2("binding: %p\n", NewBinding);
  *Binding = NewBinding;

  return RPC_S_OK;
}