#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  stm_buf; } ;
typedef  TYPE_1__ pdf_xref_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_2__ fz_compression_params ;

/* Variables and functions */
 int /*<<< orphan*/  DP ; 
 int /*<<< orphan*/  DecodeParms ; 
 int /*<<< orphan*/  F ; 
 scalar_t__ FZ_IMAGE_RAW ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(fz_context *ctx, pdf_xref_entry *entry, fz_compression_params *params)
{
	pdf_obj *f;
	pdf_obj *p;

	if (!entry || !entry->obj || !entry->stm_buf)
		return 0;

	if (params)
		params->type = FZ_IMAGE_RAW;

	f = FUNC4(ctx, entry->obj, FUNC0(Filter), FUNC0(F));
	/* If there are no filters, it's uncompressed, and we can use it */
	if (!f)
		return 1;

	p = FUNC4(ctx, entry->obj, FUNC0(DecodeParms), FUNC0(DP));
	if (FUNC5(ctx, f))
	{
		int len = FUNC3(ctx, f);

		/* Empty array of filters. Its uncompressed. We can cope. */
		if (len == 0)
			return 1;
		/* 1 filter is the most we can hope to cope with - if more,*/
		if (len != 1)
			return 0;
		p = FUNC2(ctx, p, 0);
	}
	if (FUNC7(ctx, f))
		return 1; /* Null filter is uncompressed */
	if (!FUNC6(ctx, f))
		return 0;

	/* There are filters, so unless we have the option of shortstopping,
	 * we can't use the existing buffer. */
	if (!params)
		return 0;

	FUNC1(ctx, f, p, params);

	return (params->type == FZ_IMAGE_RAW) ? 0 : 1;
}