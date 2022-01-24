#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ vncBuffer ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  bitsPerPixel; } ;
struct TYPE_8__ {TYPE_1__ serverFormat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* server ; 
 TYPE_2__* FUNC2 (TYPE_4__*,int,int,int,int) ; 

void
FUNC3(uint32 offset, int x, int y, int cx, int cy)
{
	vncBuffer *buf;

	buf = FUNC2(server, x, y, cx, cy);
	offset *= FUNC0(server->serverFormat.bitsPerPixel);
	FUNC1(offset, cx, cy, cx, FUNC0(server->serverFormat.bitsPerPixel),
			  (buf->data));
}