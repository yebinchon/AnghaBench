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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ OUT_HTML ; 
 scalar_t__ OUT_PCLM ; 
 scalar_t__ OUT_PS ; 
 scalar_t__ OUT_STEXT ; 
 scalar_t__ OUT_TRACE ; 
 scalar_t__ OUT_XHTML ; 
 int /*<<< orphan*/  bander ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 
 scalar_t__ output_format ; 
 int /*<<< orphan*/  output_pagenum ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx)
{
	if (output_format == OUT_STEXT || output_format == OUT_TRACE)
		FUNC3(ctx, out, "</document>\n");

	if (output_format == OUT_HTML)
		FUNC1(ctx, out);
	if (output_format == OUT_XHTML)
		FUNC2(ctx, out);

	if (output_format == OUT_PS)
		FUNC4(ctx, out, output_pagenum);

	if (output_format == OUT_PCLM)
		FUNC0(ctx, bander);
}