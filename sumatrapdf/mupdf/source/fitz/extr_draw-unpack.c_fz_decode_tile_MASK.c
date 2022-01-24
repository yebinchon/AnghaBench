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
struct TYPE_3__ {unsigned char* samples; int stride; int w; int n; int h; scalar_t__ alpha; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_MAX_COLORS ; 
 unsigned char FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (unsigned char,int) ; 

void
FUNC3(fz_context *ctx, fz_pixmap *pix, const float *decode)
{
	int add[FZ_MAX_COLORS];
	int mul[FZ_MAX_COLORS];
	unsigned char *p = pix->samples;
	int stride = pix->stride - pix->w * pix->n;
	int len;
	int n = FUNC1(1, pix->n - pix->alpha);
	int k;
	int h;

	for (k = 0; k < n; k++)
	{
		int min = decode[k * 2] * 255;
		int max = decode[k * 2 + 1] * 255;
		add[k] = min;
		mul[k] = max - min;
	}

	h = pix->h;
	while (h--)
	{
		len = pix->w;
		while (len--)
		{
			for (k = 0; k < n; k++)
			{
				int value = add[k] + FUNC2(p[k], mul[k]);
				p[k] = FUNC0(value, 0, 255);
			}
			p += pix->n;
		}
		p += stride;
	}
}