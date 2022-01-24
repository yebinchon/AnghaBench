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
typedef  int /*<<< orphan*/  fz_document_writer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC17 (char const*,char) ; 

fz_document_writer *
FUNC18(fz_context *ctx, const char *path, const char *format, const char *options)
{
	if (!format)
	{
		format = FUNC17(path, '.');
		if (!format)
			FUNC16(ctx, FZ_ERROR_GENERIC, "cannot detect document format");
		format += 1; /* skip the '.' */
	}

	if (!FUNC15(format, "cbz"))
		return FUNC0(ctx, path, options);
#if FZ_ENABLE_PDF
	if (!fz_strcasecmp(format, "pdf"))
		return fz_new_pdf_writer(ctx, path, options);
#endif
	if (!FUNC15(format, "svg"))
		return FUNC13(ctx, path, options);

	if (!FUNC15(format, "png"))
		return FUNC8(ctx, path, options);
	if (!FUNC15(format, "pam"))
		return FUNC1(ctx, path, options);
	if (!FUNC15(format, "pnm"))
		return FUNC9(ctx, path, options);
	if (!FUNC15(format, "pgm"))
		return FUNC6(ctx, path, options);
	if (!FUNC15(format, "ppm"))
		return FUNC10(ctx, path, options);
	if (!FUNC15(format, "pbm"))
		return FUNC2(ctx, path, options);
	if (!FUNC15(format, "pkm"))
		return FUNC7(ctx, path, options);

	if (!FUNC15(format, "pcl"))
		return FUNC3(ctx, path, options);
	if (!FUNC15(format, "pclm"))
		return FUNC4(ctx, path, options);
	if (!FUNC15(format, "ps"))
		return FUNC11(ctx, path, options);
	if (!FUNC15(format, "pwg"))
		return FUNC12(ctx, path, options);

	if (!FUNC15(format, "txt") || !FUNC15(format, "text"))
		return FUNC14(ctx, "text", path, options);
	if (!FUNC15(format, "html"))
		return FUNC14(ctx, format, path, options);
	if (!FUNC15(format, "xhtml"))
		return FUNC14(ctx, format, path, options);
	if (!FUNC15(format, "stext"))
		return FUNC14(ctx, format, path, options);

	FUNC16(ctx, FZ_ERROR_GENERIC, "unknown output document format: %s", format);
}