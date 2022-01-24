#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ fz_pclm_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ OUT_HTML ; 
 scalar_t__ OUT_PCLM ; 
 scalar_t__ OUT_PS ; 
 scalar_t__ OUT_PWG ; 
 scalar_t__ OUT_STEXT ; 
 scalar_t__ OUT_TRACE ; 
 scalar_t__ OUT_XHTML ; 
 int /*<<< orphan*/  bander ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 
 scalar_t__ output_format ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx)
{
	if (output_format == OUT_STEXT || output_format == OUT_TRACE)
		FUNC4(ctx, out, "<?xml version=\"1.0\"?>\n");

	if (output_format == OUT_HTML)
		FUNC2(ctx, out);
	if (output_format == OUT_XHTML)
		FUNC3(ctx, out);

	if (output_format == OUT_STEXT || output_format == OUT_TRACE)
		FUNC4(ctx, out, "<document name=\"%s\">\n", filename);

	if (output_format == OUT_PS)
		FUNC5(ctx, out);

	if (output_format == OUT_PWG)
		FUNC6(ctx, out);

	if (output_format == OUT_PCLM)
	{
		fz_pclm_options opts = { 0 };
		FUNC1(ctx, &opts, "compression=flate");
		bander = FUNC0(ctx, out, &opts);
	}
}