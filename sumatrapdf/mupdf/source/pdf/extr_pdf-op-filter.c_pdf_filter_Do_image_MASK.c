#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_5__ {TYPE_2__* chain; } ;
typedef  TYPE_1__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_image ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int /*<<< orphan*/  (* op_Do_image ) (int /*<<< orphan*/ *,TYPE_2__*,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XObject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_processor *proc, const char *name, fz_image *image)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	FUNC2(ctx, p, FLUSH_ALL);
	if (p->chain->op_Do_image)
		p->chain->op_Do_image(ctx, p->chain, name, image);
	FUNC1(ctx, p, FUNC0(XObject), name);
}