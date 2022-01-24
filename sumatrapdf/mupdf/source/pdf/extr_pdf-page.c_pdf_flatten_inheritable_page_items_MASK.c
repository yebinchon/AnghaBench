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
 int /*<<< orphan*/  CropBox ; 
 int /*<<< orphan*/  MediaBox ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Resources ; 
 int /*<<< orphan*/  Rotate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(fz_context *ctx, pdf_obj *page)
{
	FUNC1(ctx, page, FUNC0(MediaBox));
	FUNC1(ctx, page, FUNC0(CropBox));
	FUNC1(ctx, page, FUNC0(Rotate));
	FUNC1(ctx, page, FUNC0(Resources));
}