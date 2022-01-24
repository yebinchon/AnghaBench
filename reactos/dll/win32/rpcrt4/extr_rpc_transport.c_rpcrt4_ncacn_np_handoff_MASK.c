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
struct TYPE_5__ {int /*<<< orphan*/  NetworkAddr; } ;
typedef  int /*<<< orphan*/  RpcConnection_np ;
typedef  TYPE_1__ RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MAX_COMPUTERNAME_LENGTH ; 
 int /*<<< orphan*/  RPC_S_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RPC_STATUS FUNC7(RpcConnection *old_conn, RpcConnection *new_conn)
{
  DWORD len = MAX_COMPUTERNAME_LENGTH + 1;
  RPC_STATUS status;

  FUNC6((RpcConnection_np *)old_conn, (RpcConnection_np *)new_conn);
  status = FUNC5(old_conn);

  /* Store the local computer name as the NetworkAddr for ncacn_np as long as
   * we don't support named pipes over the network. */
  new_conn->NetworkAddr = FUNC4(FUNC3(), 0, len);
  if (!FUNC1(new_conn->NetworkAddr, &len))
  {
    FUNC0("Failed to retrieve the computer name, error %u\n", FUNC2());
    return RPC_S_OUT_OF_RESOURCES;
  }

  return status;
}