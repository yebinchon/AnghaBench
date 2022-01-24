#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  style; } ;
struct TYPE_5__ {int /*<<< orphan*/  fgcolour; int /*<<< orphan*/  bgcolour; TYPE_2__ brush; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ fillmode; scalar_t__ opcode; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  TYPE_1__ ELLIPSE2_ORDER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(RDPCLIENT * This, STREAM s, ELLIPSE2_ORDER * os, uint32 present, BOOL delta)
{
	if (present & 0x0001)
		FUNC3(s, &os->left, delta);

	if (present & 0x0002)
		FUNC3(s, &os->top, delta);

	if (present & 0x0004)
		FUNC3(s, &os->right, delta);

	if (present & 0x0008)
		FUNC3(s, &os->bottom, delta);

	if (present & 0x0010)
		FUNC1(s, os->opcode);

	if (present & 0x0020)
		FUNC1(s, os->fillmode);

	if (present & 0x0040)
		FUNC2(s, &os->bgcolour);

	if (present & 0x0080)
		FUNC2(s, &os->fgcolour);

	FUNC4(s, &os->brush, present >> 8);

	FUNC0(("ELLIPSE2(l=%d,t=%d,r=%d,b=%d,op=0x%x,fm=%d,bs=%d,bg=0x%x,fg=0x%x)\n",
	       os->left, os->top, os->right, os->bottom, os->opcode, os->fillmode, os->brush.style,
	       os->bgcolour, os->fgcolour));

#if 0
	ui_ellipse(This, os->opcode - 1, os->fillmode, os->left, os->top, os->right - os->left,
		   os->bottom - os->top, &os->brush, os->bgcolour, os->fgcolour);
#else
	FUNC5(This, os->opcode, os->fillmode, os->left, os->top, os->right - os->left,
		   os->bottom - os->top, &os->brush, os->bgcolour, os->fgcolour);
#endif
}