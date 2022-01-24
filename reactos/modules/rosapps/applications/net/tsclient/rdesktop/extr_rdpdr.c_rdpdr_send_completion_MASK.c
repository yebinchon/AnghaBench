#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {TYPE_1__ rdpdr; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(RDPCLIENT * This, uint32 device, uint32 id, uint32 status, uint32 result, uint8 * buffer,
		      uint32 length)
{
	uint8 magic[4] = "rDCI";
	STREAM s;

	s = FUNC0(This, This->rdpdr.channel, 20 + length);
	FUNC3(s, magic, 4);
	FUNC2(s, device);
	FUNC2(s, id);
	FUNC2(s, status);
	FUNC2(s, result);
	FUNC4(s, buffer, length);
	FUNC6(s);
	/* JIF */
#ifdef WITH_DEBUG_RDP5
	printf("--> rdpdr_send_completion\n");
	/* hexdump(s->channel_hdr + 8, s->end - s->channel_hdr - 8); */
#endif
	FUNC1(This, s, This->rdpdr.channel);
}