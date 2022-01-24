#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float y0; } ;
struct TYPE_6__ {TYPE_3__* ft_face; TYPE_1__ bbox; scalar_t__ t3procs; } ;
typedef  TYPE_2__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {scalar_t__ descender; float units_per_EM; } ;
typedef  TYPE_3__* FT_Face ;

/* Variables and functions */

float FUNC0(fz_context *ctx, fz_font *font)
{
	if (font->t3procs)
		return font->bbox.y0;
	else
	{
		FT_Face face = font->ft_face;
		if (face->descender == 0)
			return -0.2f;
		return (float)face->descender / face->units_per_EM;
	}
}