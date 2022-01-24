#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  srcy; int /*<<< orphan*/  srcx; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  opcode; int /*<<< orphan*/  cache_idx; int /*<<< orphan*/  cache_id; int /*<<< orphan*/  colour_table; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  TYPE_1__ MEMBLT_ORDER ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(RDPCLIENT * This, STREAM s, MEMBLT_ORDER * os, uint32 present, BOOL delta)
{
	HBITMAP bitmap;

	if (present & 0x0001)
	{
		FUNC4(s, os->cache_id);
		FUNC4(s, os->colour_table);
	}

	if (present & 0x0002)
		FUNC5(s, &os->x, delta);

	if (present & 0x0004)
		FUNC5(s, &os->y, delta);

	if (present & 0x0008)
		FUNC5(s, &os->cx, delta);

	if (present & 0x0010)
		FUNC5(s, &os->cy, delta);

	if (present & 0x0020)
		FUNC4(s, os->opcode);

	if (present & 0x0040)
		FUNC5(s, &os->srcx, delta);

	if (present & 0x0080)
		FUNC5(s, &os->srcy, delta);

	if (present & 0x0100)
		FUNC3(s, os->cache_idx);

	FUNC0(("MEMBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,id=%d,idx=%d)\n",
	       os->opcode, os->x, os->y, os->cx, os->cy, os->cache_id, os->cache_idx));

	bitmap = FUNC2(This, os->cache_id, os->cache_idx);
	if (bitmap == NULL)
		return;

#if 0
	ui_memblt(This, ROP2_S(os->opcode), os->x, os->y, os->cx, os->cy, bitmap, os->srcx, os->srcy);
#else
	FUNC6(This, os->opcode, os->x, os->y, os->cx, os->cy, bitmap, os->srcx, os->srcy);
#endif
}