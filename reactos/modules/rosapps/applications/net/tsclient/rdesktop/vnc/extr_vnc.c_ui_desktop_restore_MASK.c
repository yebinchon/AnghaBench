#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ vncBuffer ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_8__ {int /*<<< orphan*/  bitsPerPixel; } ;
struct TYPE_10__ {TYPE_1__ serverFormat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_5__* server ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int,int,int,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int,int,int) ; 
 scalar_t__ FUNC6 (int*,int*,int*,int*) ; 

void
FUNC7(uint32 offset, int x, int y, int cx, int cy)
{
	uint8 *data;
	vncBuffer *buf;
	int ox, oy, srcx, srcy;

	srcx = srcy = 0;
	ox = x;
	oy = y;

	offset *= FUNC0(server->serverFormat.bitsPerPixel);
	data = FUNC1(offset, cx, cy, FUNC0(server->serverFormat.bitsPerPixel));
	if (data == NULL)
		return;

	buf = FUNC5(cx, cy, 8);
	FUNC2(buf->data, data, cx * cy * 1);

	if (FUNC6(&x, &y, &cx, &cy))
	{
		srcx += x - ox;
		srcy += y - oy;
		FUNC3(server, x, y, cx, cy, buf, srcx, srcy);
	}
	FUNC4(buf);
}