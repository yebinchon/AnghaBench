#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  NetworkAddr; } ;
struct TYPE_5__ {scalar_t__ pipe; } ;
typedef  TYPE_1__ RpcConnection_np ;
typedef  TYPE_2__ RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC3(RpcConnection* Connection)
{
  RpcConnection_np *npc = (RpcConnection_np *) Connection;
  RPC_STATUS r;
  LPSTR pname;

  /* already connected? */
  if (npc->pipe)
    return RPC_S_OK;

#ifdef __REACTOS__
  pname = ncacn_pipe_name(Connection->NetworkAddr, Connection->Endpoint);
#else
  pname = FUNC1(Connection->Endpoint);
#endif
  r = FUNC2(Connection, pname, FALSE);
  FUNC0(pname);

  return r;
}