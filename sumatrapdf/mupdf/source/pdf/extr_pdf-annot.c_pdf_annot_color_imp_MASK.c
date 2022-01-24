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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, pdf_obj *arr, int *n, float color[4])
{
	switch (FUNC1(ctx, arr))
	{
	case 0:
		if (n)
			*n = 0;
		break;
	case 1:
	case 2:
		if (n)
			*n = 1;
		if (color)
			color[0] = FUNC0(ctx, arr, 0);
		break;
	case 3:
		if (n)
			*n = 3;
		if (color)
		{
			color[0] = FUNC0(ctx, arr, 0);
			color[1] = FUNC0(ctx, arr, 1);
			color[2] = FUNC0(ctx, arr, 2);
		}
		break;
	case 4:
	default:
		if (n)
			*n = 4;
		if (color)
		{
			color[0] = FUNC0(ctx, arr, 0);
			color[1] = FUNC0(ctx, arr, 1);
			color[2] = FUNC0(ctx, arr, 2);
			color[3] = FUNC0(ctx, arr, 3);
		}
		break;
	}
}