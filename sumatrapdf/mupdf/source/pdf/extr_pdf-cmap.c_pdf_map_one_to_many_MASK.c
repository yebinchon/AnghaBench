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
struct TYPE_5__ {int /*<<< orphan*/  cmap_name; } ;
typedef  TYPE_1__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int PDF_MRANGE_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(fz_context *ctx, pdf_cmap *cmap, unsigned int low, int *values, int len)
{
	if (len == 1)
	{
		FUNC1(ctx, cmap, low, low, values[0], 1, 0);
		return;
	}

	/* Decode unicode surrogate pairs. */
	/* Only the *-UCS2 CMaps use one-to-many mappings, so assuming unicode should be safe. */
	if (len == 2 &&
		values[0] >= 0xD800 && values[0] <= 0xDBFF &&
		values[1] >= 0xDC00 && values[1] <= 0xDFFF)
	{
		int rune = ((values[0] - 0xD800) << 10) + (values[1] - 0xDC00) + 0x10000;
		FUNC1(ctx, cmap, low, low, rune, 1, 0);
		return;
	}

	if (len > PDF_MRANGE_CAP)
	{
		FUNC2(ctx, "ignoring one to many mapping in cmap %s", cmap->cmap_name);
		return;
	}

	FUNC0(ctx, cmap, low, values, len);
}