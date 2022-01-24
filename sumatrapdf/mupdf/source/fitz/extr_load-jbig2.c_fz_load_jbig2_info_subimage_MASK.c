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
struct info {int width; int height; int xres; int yres; int /*<<< orphan*/  cspace; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct info*,unsigned char const*,size_t,int,int) ; 

void
FUNC2(fz_context *ctx, const unsigned char *buf, size_t len, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep, int subimage)
{
	struct info jbig2 = { 0 };

	FUNC1(ctx, &jbig2, buf, len, 1, subimage);
	*cspacep = FUNC0(ctx, jbig2.cspace);
	*wp = jbig2.width;
	*hp = jbig2.height;
	*xresp = jbig2.xres;
	*yresp = jbig2.yres;
}