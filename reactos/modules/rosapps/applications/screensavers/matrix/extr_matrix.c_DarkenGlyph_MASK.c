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
typedef  int GLYPH ;

/* Variables and functions */
 int GLYPH_REDRAW ; 
 int FUNC0 (int) ; 

GLYPH FUNC1(GLYPH glyph)
{
	int intensity = FUNC0(glyph);

	if(intensity > 0)
		return GLYPH_REDRAW | ((intensity - 1) << 8) | (glyph & 0x00FF);
	else
		return glyph;
}