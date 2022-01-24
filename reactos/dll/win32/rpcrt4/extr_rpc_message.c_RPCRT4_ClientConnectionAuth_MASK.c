#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  RpcPktHdr ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  NDR_LOCAL_DATA_REPRESENTATION ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 scalar_t__ RPC_S_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned int*) ; 

RPC_STATUS FUNC8(RpcConnection* conn, BYTE *challenge,
                                       ULONG count)
{
  RpcPktHdr *resp_hdr;
  RPC_STATUS status;
  unsigned char *out_buffer;
  unsigned int out_len = 0;

  FUNC6("challenge %s, %d bytes\n", challenge, count);

  status = FUNC7(conn, FALSE, challenge, count, NULL, &out_len);
  if (status) return status;
  out_buffer = FUNC1(FUNC0(), 0, out_len);
  if (!out_buffer) return RPC_S_OUT_OF_RESOURCES;
  status = FUNC7(conn, FALSE, challenge, count, out_buffer, &out_len);
  if (status) return status;

  resp_hdr = FUNC3(NDR_LOCAL_DATA_REPRESENTATION);

  if (resp_hdr)
    status = FUNC5(conn, resp_hdr, NULL, 0, out_buffer, out_len);
  else
    status = RPC_S_OUT_OF_RESOURCES;

  FUNC2(FUNC0(), 0, out_buffer);
  FUNC4(resp_hdr);

  return status;
}