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
struct TYPE_3__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ RpcConnection_tcp ;
typedef  int /*<<< orphan*/  RpcConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ WSAEINTR ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(RpcConnection *Connection,
                                void *buffer, unsigned int count)
{
  RpcConnection_tcp *tcpc = (RpcConnection_tcp *) Connection;
  int bytes_read = 0;
  while (bytes_read != count)
  {
    int r = FUNC3(tcpc->sock, (char *)buffer + bytes_read, count - bytes_read, 0);
    if (!r)
      return -1;
    else if (r > 0)
      bytes_read += r;
    else if (FUNC2() == WSAEINTR)
      continue;
    else if (FUNC2() != WSAEWOULDBLOCK)
    {
      FUNC1("recv() failed: %u\n", FUNC2());
      return -1;
    }
    else
    {
      if (!FUNC4(tcpc))
        return -1;
    }
  }
  FUNC0("%d %p %u -> %d\n", tcpc->sock, buffer, count, bytes_read);
  return bytes_read;
}