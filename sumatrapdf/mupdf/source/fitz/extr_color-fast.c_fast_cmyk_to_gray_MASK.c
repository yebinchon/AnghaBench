#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
struct TYPE_4__ {unsigned char* samples; size_t w; int h; int n; int s; int alpha; size_t stride; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(fz_context *ctx, fz_pixmap *src, fz_pixmap *dst, int copy_spots)
{
	unsigned char *s = src->samples;
	unsigned char *d = dst->samples;
	size_t w = src->w;
	int h = src->h;
	int sn = src->n;
	int ss = src->s;
	int sa = src->alpha;
	int dn = dst->n;
	int ds = dst->s;
	int da = dst->alpha;
	ptrdiff_t d_line_inc = dst->stride - w * dn;
	ptrdiff_t s_line_inc = src->stride - w * sn;
	int c, m, y, k, g;
	int a = 255;
	int i;

	if (copy_spots && ss != ds)
		FUNC3(ctx, FZ_ERROR_GENERIC, "incompatible number of spots when converting pixmap");

	if ((int)w < 0 || h < 0)
		FUNC3(ctx, FZ_ERROR_GENERIC, "integer overflow");

	while (h--)
	{
		size_t ww = w;
		while (ww--)
		{
			c = s[0];
			m = s[1];
			y = s[2];
			k = s[3];

			if (sa)
			{
				a = s[4+ss];
				c = FUNC0(c, a);
				m = FUNC0(m, a);
				y = FUNC0(y, a);
				k = FUNC0(k, a);
			}

			g = 255 - FUNC1(c + m + y + k, 255);

			if (da)
			{
				*d++ = FUNC2(g, a);
			}
			else
			{
				*d++ = g;
			}

			if (copy_spots)
			{
				s += 4;
				for (i=ss; i > 0; --i)
					*d++ = *s++;
				s += sa;
			}
			else
			{
				s += 4 + ss + sa;
				d += ds;
			}

			if (da)
			{
				*d++ = a;
			}
		}
		d += d_line_inc;
		s += s_line_inc;
	}
}