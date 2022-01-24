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
typedef  int /*<<< orphan*/  pdf_device ;
struct TYPE_3__ {scalar_t__ buf; } ;
typedef  TYPE_1__ gstate ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  pdf_dev_path_proc ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, pdf_device *pdev, const fz_path *path)
{
	gstate *gs = FUNC0(pdev);

	FUNC1(ctx, path, &pdf_dev_path_proc, (void *)gs->buf);
}