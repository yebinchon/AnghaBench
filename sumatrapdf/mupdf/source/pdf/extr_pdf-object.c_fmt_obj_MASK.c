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
struct fmt {scalar_t__ ascii; scalar_t__ crypt; } ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * PDF_FALSE ; 
 int /*<<< orphan*/ * PDF_NULL ; 
 int /*<<< orphan*/ * PDF_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fmt*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
	char buf[256];

	if (obj == PDF_NULL)
		FUNC4(ctx, fmt, "null");
	else if (obj == PDF_TRUE)
		FUNC4(ctx, fmt, "true");
	else if (obj == PDF_FALSE)
		FUNC4(ctx, fmt, "false");
	else if (FUNC11(ctx, obj))
	{
		FUNC6(buf, sizeof buf, "%d %d R", FUNC18(ctx, obj), FUNC16(ctx, obj));
		FUNC4(ctx, fmt, buf);
	}
	else if (FUNC12(ctx, obj))
	{
		FUNC6(buf, sizeof buf, "%d", FUNC17(ctx, obj));
		FUNC4(ctx, fmt, buf);
	}
	else if (FUNC14(ctx, obj))
	{
		FUNC6(buf, sizeof buf, "%g", FUNC19(ctx, obj));
		FUNC4(ctx, fmt, buf);
	}
	else if (FUNC15(ctx, obj))
	{
		unsigned char *str = (unsigned char *)FUNC20(ctx, obj);
		if (fmt->crypt
			|| (fmt->ascii && FUNC7(ctx, obj))
			|| (str[0]==0xff && str[1]==0xfe)
			|| (str[0]==0xfe && str[1] == 0xff)
			|| FUNC8(ctx, obj)
			)
			FUNC2(ctx, fmt, obj);
		else
			FUNC5(ctx, fmt, obj);
	}
	else if (FUNC13(ctx, obj))
		FUNC3(ctx, fmt, obj);
	else if (FUNC9(ctx, obj))
		FUNC0(ctx, fmt, obj);
	else if (FUNC10(ctx, obj))
		FUNC1(ctx, fmt, obj);
	else
		FUNC4(ctx, fmt, "<unknown object>");
}