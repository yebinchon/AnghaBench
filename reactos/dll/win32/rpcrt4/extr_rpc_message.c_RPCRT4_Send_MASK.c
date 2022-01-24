#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ AuthInfo; } ;
typedef  int /*<<< orphan*/  RpcPktHdr ;
typedef  TYPE_1__ RpcConnection ;
typedef  scalar_t__ RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,void*,unsigned int,unsigned char*,unsigned int) ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

RPC_STATUS FUNC7(RpcConnection *Connection, RpcPktHdr *Header,
                       void *Buffer, unsigned int BufferLength)
{
  RPC_STATUS r;

  if (FUNC4(Header) &&
      Connection->AuthInfo &&
      !FUNC6(Connection))
  {
      unsigned int out_size = 0;
      unsigned char *out_buffer;

      r = FUNC5(Connection, TRUE, NULL, 0, NULL, &out_size);
      if (r != RPC_S_OK) return r;

      out_buffer = FUNC1(FUNC0(), 0, out_size);
      if (!out_buffer) return RPC_S_OUT_OF_RESOURCES;

      /* tack on a negotiate packet */
      r = FUNC5(Connection, TRUE, NULL, 0, out_buffer, &out_size);
      if (r == RPC_S_OK)
          r = FUNC3(Connection, Header, Buffer, BufferLength, out_buffer, out_size);

      FUNC2(FUNC0(), 0, out_buffer);
  }
  else
    r = FUNC3(Connection, Header, Buffer, BufferLength, NULL, 0);

  return r;
}