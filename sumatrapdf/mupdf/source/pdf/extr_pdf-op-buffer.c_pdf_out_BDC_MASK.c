#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_2__ {int ahxencode; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ pdf_output_processor ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_processor *proc, const char *tag, pdf_obj *raw, pdf_obj *cooked)
{
	fz_output *out = ((pdf_output_processor*)proc)->out;
	int ahx = ((pdf_output_processor*)proc)->ahxencode;
	FUNC0(ctx, out, "%n ", tag);
	FUNC2(ctx, out, raw, 1, ahx);
	FUNC1(ctx, out, " BDC\n");
}