#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_annot ;
struct TYPE_5__ {int x0; int x1; int y0; int y1; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ FUNC1 (float,float,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect, fz_rect *bbox)
{
	float xc = (rect->x0 + rect->x1) / 2;
	float yc = (rect->y0 + rect->y1) / 2;

	FUNC2(ctx, annot, buf);

	FUNC0(ctx, buf, "0 0 m\n");
	FUNC0(ctx, buf, "10 0 10 7 10 14 c\n");
	FUNC0(ctx, buf, "10 7 10 0 20 0 c\n");
	FUNC0(ctx, buf, "f\n");

	*rect = FUNC1(xc - 10, yc - 7, xc + 10, yc + 7);
	*bbox = FUNC1(0, 0, 20, 14);
}