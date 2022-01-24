#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {unsigned short flags; unsigned short num_data_items; } ;
struct TYPE_8__ {int flags; int frag_len; scalar_t__ call_id; } ;
struct TYPE_9__ {TYPE_1__ http; TYPE_2__ common; } ;
typedef  TYPE_3__ RpcPktHdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PKT_HTTP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RPC_FLG_FIRST ; 
 int RPC_FLG_LAST ; 

RpcPktHdr *FUNC4(ULONG DataRepresentation,
                                  unsigned short flags,
                                  unsigned short num_data_items,
                                  unsigned int payload_size)
{
  RpcPktHdr *header;

  header = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(header->http) + payload_size);
  if (header == NULL) {
      FUNC0("failed to allocate memory\n");
    return NULL;
  }

  FUNC3(header, PKT_HTTP, DataRepresentation);
  /* since the packet isn't current sent using RPCRT4_Send, set the flags
   * manually here */
  header->common.flags = RPC_FLG_FIRST|RPC_FLG_LAST;
  header->common.call_id = 0;
  header->common.frag_len = sizeof(header->http) + payload_size;
  header->http.flags = flags;
  header->http.num_data_items = num_data_items;

  return header;
}