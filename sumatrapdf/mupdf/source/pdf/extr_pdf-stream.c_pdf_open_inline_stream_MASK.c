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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ fz_compression_params ;

/* Variables and functions */
 int /*<<< orphan*/  DP ; 
 int /*<<< orphan*/  DecodeParms ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  FZ_IMAGE_RAW ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

fz_stream *
FUNC8(fz_context *ctx, pdf_document *doc, pdf_obj *stmobj, int length, fz_stream *file_stm, fz_compression_params *imparams)
{
	pdf_obj *filters = FUNC6(ctx, stmobj, FUNC0(Filter), FUNC0(F));
	pdf_obj *params = FUNC6(ctx, stmobj, FUNC0(DecodeParms), FUNC0(DP));

	if (FUNC7(ctx, filters))
		return FUNC1(ctx, file_stm, doc, filters, params, 0, 0, imparams);
	else if (FUNC5(ctx, filters) > 0)
		return FUNC2(ctx, file_stm, doc, filters, params, 0, 0, imparams);

	if (imparams)
		imparams->type = FZ_IMAGE_RAW;
	return FUNC3(ctx, file_stm, length, FUNC4(ctx, file_stm));
}