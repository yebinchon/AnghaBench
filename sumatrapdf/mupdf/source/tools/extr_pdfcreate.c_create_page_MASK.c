#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_stream ;
struct TYPE_3__ {int member_2; int member_3; void* y1; void* x1; void* y0; void* x0; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC11 (char**,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

__attribute__((used)) static void FUNC18(char *input)
{
	fz_rect mediabox = { 0, 0, 595, 842 };
	int rotate = 0;

	char line[4096];
	char *s, *p;
	fz_stream *stm;

	fz_buffer *contents;
	pdf_obj *resources;
	pdf_obj *page;

	resources = FUNC16(ctx, doc, 2);
	contents = FUNC8(ctx, 1024);

	stm = FUNC9(ctx, input);
	while (FUNC10(ctx, stm, line, sizeof line))
	{
		if (line[0] == '%' && line[1] == '%')
		{
			p = line;
			s = FUNC11(&p, " ");
			if (!FUNC17(s, "%%MediaBox"))
			{
				mediabox.x0 = FUNC5(FUNC11(&p, " "));
				mediabox.y0 = FUNC5(FUNC11(&p, " "));
				mediabox.x1 = FUNC5(FUNC11(&p, " "));
				mediabox.y1 = FUNC5(FUNC11(&p, " "));
			}
			else if (!FUNC17(s, "%%Rotate"))
			{
				rotate = FUNC5(FUNC11(&p, " "));
			}
			else if (!FUNC17(s, "%%Font"))
			{
				char *name = FUNC11(&p, " ");
				char *path = FUNC11(&p, " ");
				char *enc = FUNC11(&p, " ");
				if (!name || !path)
					FUNC12(ctx, FZ_ERROR_GENERIC, "Font directive missing arguments");
				FUNC1(resources, name, path, enc);
			}
			else if (!FUNC17(s, "%%CJKFont"))
			{
				char *name = FUNC11(&p, " ");
				char *lang = FUNC11(&p, " ");
				char *wmode = FUNC11(&p, " ");
				char *style = FUNC11(&p, " ");
				if (!name || !lang)
					FUNC12(ctx, FZ_ERROR_GENERIC, "CJKFont directive missing arguments");
				FUNC0(resources, name, lang, wmode, style);
			}
			else if (!FUNC17(s, "%%Image"))
			{
				char *name = FUNC11(&p, " ");
				char *path = FUNC11(&p, " ");
				if (!name || !path)
					FUNC12(ctx, FZ_ERROR_GENERIC, "Image directive missing arguments");
				FUNC2(resources, name, path);
			}
		}
		else
		{
			FUNC4(ctx, contents, line);
			FUNC3(ctx, contents, '\n');
		}
	}
	FUNC7(ctx, stm);

	page = FUNC13(ctx, doc, mediabox, rotate, resources, contents);
	FUNC15(ctx, doc, -1, page);
	FUNC14(ctx, page);

	FUNC6(ctx, contents);
	FUNC14(ctx, resources);
}