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
struct TYPE_3__ {unsigned char* samples; int h; int stride; int w; int n; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_md5 ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 

void
FUNC3(fz_context *ctx, fz_pixmap *pix, unsigned char digest[16])
{
	fz_md5 md5;

	FUNC1(&md5);
	if (pix)
	{
		unsigned char *s = pix->samples;
		int h = pix->h;
		int ss = pix->stride;
		int len = pix->w * pix->n;
		while (h--)
		{
			FUNC2(&md5, s, len);
			s += ss;
		}
	}
	FUNC0(&md5, digest);
}