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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,float*) ; 

__attribute__((used)) static int FUNC2(fz_context *ctx, pdf_annot *annot)
{
	float color[4], gray;
	int n;
	FUNC1(ctx, annot, &n, color);
	switch (n)
	{
	default:
		gray = 1;
		break;
	case 1:
		gray = color[0];
		break;
	case 3:
		gray = color[0] * 0.3f + color[1] * 0.59f + color[2] * 0.11f;
		break;
	case 4:
		gray = color[0] * 0.3f + color[1] * 0.59f + color[2] * 0.11f + color[3];
		gray = 1 - FUNC0(gray, 1);
		break;
	}
	return gray < 0.25f;
}