#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sock_event; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ RpcConnection_tcp ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FD_CLOSE ; 
 int FD_WRITE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
#define  WAIT_OBJECT_0 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(RpcConnection_tcp *tcpc)
{
  DWORD res;
  if (FUNC2(tcpc->sock, tcpc->sock_event, FD_WRITE | FD_CLOSE) == SOCKET_ERROR)
  {
    FUNC0("WSAEventSelect() failed with error %d\n", FUNC3());
    return FALSE;
  }
  res = FUNC4(tcpc->sock_event, INFINITE);
  switch (res)
  {
  case WAIT_OBJECT_0:
    return TRUE;
  default:
    FUNC0("WaitForMultipleObjects() failed with error %d\n", FUNC1());
    return FALSE;
  }
}