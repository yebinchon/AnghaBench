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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_document_writer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 

fz_document_writer *
FUNC9(fz_context *ctx, fz_output *out, const char *format, const char *options)
{
	if (!FUNC7(format, "cbz"))
		return FUNC0(ctx, out, options);
#if FZ_ENABLE_PDF
	if (!fz_strcasecmp(format, "pdf"))
		return fz_new_pdf_writer_with_output(ctx, out, options);
#endif

	if (!FUNC7(format, "pcl"))
		return FUNC1(ctx, out, options);
	if (!FUNC7(format, "pclm"))
		return FUNC2(ctx, out, options);
	if (!FUNC7(format, "ps"))
		return FUNC4(ctx, out, options);
	if (!FUNC7(format, "pwg"))
		return FUNC5(ctx, out, options);

	if (!FUNC7(format, "txt") || !FUNC7(format, "text"))
		return FUNC6(ctx, "text", out, options);
	if (!FUNC7(format, "html"))
		return FUNC6(ctx, format, out, options);
	if (!FUNC7(format, "xhtml"))
		return FUNC6(ctx, format, out, options);
	if (!FUNC7(format, "stext"))
		return FUNC6(ctx, format, out, options);

	FUNC8(ctx, FZ_ERROR_GENERIC, "unknown output document format: %s", format);
}