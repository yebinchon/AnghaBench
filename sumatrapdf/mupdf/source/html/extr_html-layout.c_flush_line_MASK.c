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
typedef  int /*<<< orphan*/  fz_html_flow ;
struct TYPE_4__ {float b; } ;
typedef  TYPE_1__ fz_html_box ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float FUNC0 (float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,float,float) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, fz_html_box *box, float page_h, float page_w, float line_w, int align, float indent, fz_html_flow *a, fz_html_flow *b)
{
	float avail, line_h, baseline;
	line_h = FUNC2(a, b, &baseline);
	if (page_h > 0)
	{
		avail = page_h - FUNC0(box->b, page_h);
		if (line_h > avail)
			box->b += avail;
	}
	FUNC1(ctx, indent, page_w, line_w, align, a, b, box, baseline, line_h);
	box->b += line_h;
}