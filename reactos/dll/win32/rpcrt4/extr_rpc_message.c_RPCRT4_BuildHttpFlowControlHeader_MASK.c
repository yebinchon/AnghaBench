#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UUID ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  http; } ;
typedef  TYPE_1__ RpcPktHdr ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  NDR_LOCAL_DATA_REPRESENTATION ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

RpcPktHdr *FUNC3(BOOL server, ULONG bytes_transmitted,
                                             ULONG flow_control_increment,
                                             const UUID *pipe_uuid)
{
  RpcPktHdr *header;
  char *payload;

  header = FUNC0(NDR_LOCAL_DATA_REPRESENTATION, 0x2, 2,
                                  5 * sizeof(ULONG) + sizeof(UUID));
  if (!header) return NULL;
  payload = (char *)(&header->http+1);

  FUNC2(payload, 0x0000000d, (server ? 0x0 : 0x3));

  FUNC1(payload, bytes_transmitted,
                                        flow_control_increment, *pipe_uuid);
  return header;
}