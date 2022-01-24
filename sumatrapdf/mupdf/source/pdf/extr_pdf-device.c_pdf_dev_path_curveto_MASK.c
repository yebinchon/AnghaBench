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
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float,float,float,float,float) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, void *arg, float x1, float y1, float x2, float y2, float x3, float y3)
{
	fz_buffer *buf = (fz_buffer *)arg;
	FUNC0(ctx, buf, "%g %g %g %g %g %g c\n", x1, y1, x2, y2, x3, y3);
}