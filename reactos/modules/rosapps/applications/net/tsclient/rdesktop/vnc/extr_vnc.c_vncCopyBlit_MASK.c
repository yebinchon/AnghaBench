#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rfbScreenInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

void
FUNC1(rfbScreenInfoPtr s, int x, int y, int w, int h, int srcx, int srcy)
{
	/* LibVNCServer already knows how to copy the data. */
	FUNC0(s, x, y, x + w, y + h, x - srcx, y - srcy);
}