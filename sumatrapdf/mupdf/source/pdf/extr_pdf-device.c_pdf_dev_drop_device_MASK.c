#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_gstates; int num_cid_fonts; int num_groups; TYPE_2__* gstates; TYPE_2__* alphas; TYPE_2__* groups; TYPE_2__* image_indices; TYPE_2__* cid_fonts; int /*<<< orphan*/  resources; } ;
typedef  TYPE_1__ pdf_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  ref; int /*<<< orphan*/  stroke_state; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_device *dev)
{
	pdf_device *pdev = (pdf_device*)dev;
	int i;

	for (i = pdev->num_gstates-1; i >= 0; i--)
	{
		FUNC0(ctx, pdev->gstates[i].buf);
		FUNC3(ctx, pdev->gstates[i].stroke_state);
	}

	for (i = pdev->num_cid_fonts-1; i >= 0; i--)
		FUNC2(ctx, pdev->cid_fonts[i]);

	for (i = pdev->num_groups - 1; i >= 0; i--)
	{
		FUNC5(ctx, pdev->groups[i].ref);
		FUNC1(ctx, pdev->groups[i].colorspace);
	}

	FUNC5(ctx, pdev->resources);
	FUNC4(ctx, pdev->cid_fonts);
	FUNC4(ctx, pdev->image_indices);
	FUNC4(ctx, pdev->groups);
	FUNC4(ctx, pdev->alphas);
	FUNC4(ctx, pdev->gstates);
}