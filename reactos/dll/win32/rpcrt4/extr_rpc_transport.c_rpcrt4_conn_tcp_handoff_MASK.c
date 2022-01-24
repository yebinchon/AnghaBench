#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  address ;
struct TYPE_3__ {int /*<<< orphan*/  NetworkAddr; } ;
struct TYPE_4__ {int sock; TYPE_1__ common; } ;
typedef  TYPE_2__ RpcConnection_tcp ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct sockaddr*,int*) ; 
 int FUNC5 (struct sockaddr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static RPC_STATUS FUNC7(RpcConnection *old_conn, RpcConnection *new_conn)
{
  int ret;
  struct sockaddr_in address;
  socklen_t addrsize;
  RpcConnection_tcp *server = (RpcConnection_tcp*) old_conn;
  RpcConnection_tcp *client = (RpcConnection_tcp*) new_conn;
  u_long nonblocking;

  addrsize = sizeof(address);
  ret = FUNC4(server->sock, (struct sockaddr*) &address, &addrsize);
  if (ret < 0)
  {
    FUNC0("Failed to accept a TCP connection: error %d\n", ret);
    return RPC_S_OUT_OF_RESOURCES;
  }

  nonblocking = 1;
  FUNC6(ret, FIONBIO, &nonblocking);
  client->sock = ret;

  client->common.NetworkAddr = FUNC2(FUNC1(), 0, INET6_ADDRSTRLEN);
  ret = FUNC5((struct sockaddr*)&address, addrsize, client->common.NetworkAddr, INET6_ADDRSTRLEN, NULL, 0, NI_NUMERICHOST);
  if (ret != 0)
  {
    FUNC0("Failed to retrieve the IP address, error %d\n", ret);
    return RPC_S_OUT_OF_RESOURCES;
  }

  FUNC3("Accepted a new TCP connection from %s\n", client->common.NetworkAddr);
  return RPC_S_OK;
}