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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,float,...) ; 

void
FUNC1(fz_context *ctx, char *buf, int nbuf, const char *font, float size, const float color[3])
{
	if (color[0] > 0 || color[1] > 0 || color[2] > 0)
		FUNC0(buf, nbuf, "/%s %g Tf %g %g %g rg", font, size, color[0], color[1], color[2]);
	else
		FUNC0(buf, nbuf, "/%s %g Tf", font, size);
}