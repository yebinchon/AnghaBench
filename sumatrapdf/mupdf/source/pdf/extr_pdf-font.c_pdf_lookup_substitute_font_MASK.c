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
 unsigned char const* FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 

const unsigned char *
FUNC1(fz_context *ctx, int mono, int serif, int bold, int italic, int *len)
{
	if (mono) {
		if (bold) {
			if (italic) return FUNC0(ctx, "Courier-BoldOblique", len);
			else return FUNC0(ctx, "Courier-Bold", len);
		} else {
			if (italic) return FUNC0(ctx, "Courier-Oblique", len);
			else return FUNC0(ctx, "Courier", len);
		}
	} else if (serif) {
		if (bold) {
			if (italic) return FUNC0(ctx, "Times-BoldItalic", len);
			else return FUNC0(ctx, "Times-Bold", len);
		} else {
			if (italic) return FUNC0(ctx, "Times-Italic", len);
			else return FUNC0(ctx, "Times-Roman", len);
		}
	} else {
		if (bold) {
			if (italic) return FUNC0(ctx, "Helvetica-BoldOblique", len);
			else return FUNC0(ctx, "Helvetica-Bold", len);
		} else {
			if (italic) return FUNC0(ctx, "Helvetica-Oblique", len);
			else return FUNC0(ctx, "Helvetica", len);
		}
	}
}