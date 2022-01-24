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
struct TYPE_4__ {int /*<<< orphan*/  http; } ;
typedef  TYPE_1__ RpcPktHdr ;

/* Variables and functions */
 int /*<<< orphan*/  NDR_LOCAL_DATA_REPRESENTATION ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/  const) ; 

RpcPktHdr *FUNC3(int out_pipe,
                                         const UUID *connection_uuid,
                                         const UUID *pipe_uuid,
                                         const UUID *association_uuid)
{
  RpcPktHdr *header;
  unsigned int size;
  char *payload;

  size = 8 + 4 + sizeof(UUID) + 4 + sizeof(UUID) + 8;
  if (!out_pipe)
    size += 8 + 4 + sizeof(UUID);

  header = FUNC0(NDR_LOCAL_DATA_REPRESENTATION, 0,
                                  out_pipe ? 4 : 6, size);
  if (!header) return NULL;
  payload = (char *)(&header->http+1);

  /* FIXME: what does this part of the payload do? */
  FUNC1(payload, 0x00000006, 0x00000001);

  FUNC2(payload, 0x00000003, *connection_uuid);
  FUNC2(payload, 0x00000003, *pipe_uuid);

  if (out_pipe)
    /* FIXME: what does this part of the payload do? */
    FUNC1(payload, 0x00000000, 0x00010000);
  else
  {
    /* FIXME: what does this part of the payload do? */
    FUNC1(payload, 0x00000004, 0x40000000);
    /* FIXME: what does this part of the payload do? */
    FUNC1(payload, 0x00000005, 0x000493e0);

    FUNC2(payload, 0x0000000c, *association_uuid);
  }

  return header;
}