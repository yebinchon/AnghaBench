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
typedef  int /*<<< orphan*/  pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,float*) ; 

__attribute__((used)) static int FUNC2(fz_context *ctx, pdf_annot *annot, fz_buffer *buf)
{
	float color[4];
	int n;
	FUNC1(ctx, annot, &n, color);
	switch (n)
	{
	default: return 0;
	case 1: FUNC0(ctx, buf, "%g g\n", color[0]); break;
	case 3: FUNC0(ctx, buf, "%g %g %g rg\n", color[0], color[1], color[2]); break;
	case 4: FUNC0(ctx, buf, "%g %g %g %g k\n", color[0], color[1], color[2], color[3]); break;
	}
	return 1;
}