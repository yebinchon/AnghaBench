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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {unsigned char ptype; int call_id; scalar_t__ flags; scalar_t__ auth_len; void** drep; int /*<<< orphan*/  rpc_ver_minor; int /*<<< orphan*/  rpc_ver; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
typedef  TYPE_2__ RpcPktHdr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_VER_MAJOR ; 
 int /*<<< orphan*/  RPC_VER_MINOR ; 

__attribute__((used)) static VOID FUNC4(RpcPktHdr *Header, unsigned char PacketType,
                                     ULONG DataRepresentation)
{
  Header->common.rpc_ver = RPC_VER_MAJOR;
  Header->common.rpc_ver_minor = RPC_VER_MINOR;
  Header->common.ptype = PacketType;
  Header->common.drep[0] = FUNC2(FUNC3(DataRepresentation));
  Header->common.drep[1] = FUNC0(FUNC3(DataRepresentation));
  Header->common.drep[2] = FUNC2(FUNC1(DataRepresentation));
  Header->common.drep[3] = FUNC0(FUNC1(DataRepresentation));
  Header->common.auth_len = 0;
  Header->common.call_id = 1;
  Header->common.flags = 0;
  /* Flags and fragment length are computed in RPCRT4_Send. */
}