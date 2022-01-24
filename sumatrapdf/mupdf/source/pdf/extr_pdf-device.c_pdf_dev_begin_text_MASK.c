#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int in_text; } ;
typedef  TYPE_1__ pdf_device ;
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ gstate ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_device *pdev, int trm)
{
	FUNC2(ctx, pdev, trm);
	if (!pdev->in_text)
	{
		gstate *gs = FUNC0(pdev);
		FUNC1(ctx, gs->buf, "BT\n");
		pdev->in_text = 1;
	}
}