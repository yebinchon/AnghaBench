#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_4__ {int flags; int num_data_items; } ;
struct TYPE_5__ {TYPE_1__ http; } ;
typedef  TYPE_2__ RpcPktHdr ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_PROTOCOL_ERROR ; 

RPC_STATUS FUNC3(RpcPktHdr *header,
                                          unsigned char *data, ULONG *field1)
{
  ULONG type;
  if (header->http.flags != 0x0)
  {
    FUNC0("invalid flags 0x%x\n", header->http.flags);
    return RPC_S_PROTOCOL_ERROR;
  }
  if (header->http.num_data_items != 1)
  {
    FUNC0("invalid number of data items %d\n", header->http.num_data_items);
    return RPC_S_PROTOCOL_ERROR;
  }
  type = FUNC2(data);
  if (type != 0x00000002)
  {
    FUNC0("invalid type 0x%08x\n", type);
    return RPC_S_PROTOCOL_ERROR;
  }
  *field1 = *(ULONG *)FUNC1(data);
  return RPC_S_OK;
}