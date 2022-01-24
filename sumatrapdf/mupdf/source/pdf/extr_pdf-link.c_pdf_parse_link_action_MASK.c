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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  FirstPage ; 
 int /*<<< orphan*/  GoTo ; 
 int /*<<< orphan*/  GoToR ; 
 int /*<<< orphan*/  LastPage ; 
 int /*<<< orphan*/  Launch ; 
 int /*<<< orphan*/  N ; 
 int /*<<< orphan*/  Named ; 
 int /*<<< orphan*/  NextPage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PrevPage ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  URI ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 scalar_t__ FUNC16 (char const*) ; 

char *
FUNC17(fz_context *ctx, pdf_document *doc, pdf_obj *action, int pagenum)
{
	pdf_obj *obj, *dest, *file_spec;

	if (!action)
		return NULL;

	obj = FUNC6(ctx, action, FUNC0(S));
	if (FUNC9(ctx, FUNC0(GoTo), obj))
	{
		dest = FUNC6(ctx, action, FUNC0(D));
		return FUNC11(ctx, doc, dest);
	}
	else if (FUNC9(ctx, FUNC0(URI), obj))
	{
		/* URI entries are ASCII strings */
		const char *uri = FUNC7(ctx, action, FUNC0(URI));
		if (!FUNC2(ctx, uri))
		{
			pdf_obj *uri_base_obj = FUNC8(ctx, FUNC13(ctx, doc), "Root/URI/Base");
			const char *uri_base = uri_base_obj ? FUNC12(ctx, uri_base_obj) : "file://";
			char *new_uri = FUNC3(ctx, FUNC16(uri_base) + FUNC16(uri) + 1);
			FUNC15(new_uri, uri_base);
			FUNC14(new_uri, uri);
			return new_uri;
		}
		return FUNC4(ctx, uri);
	}
	else if (FUNC9(ctx, FUNC0(Launch), obj))
	{
		file_spec = FUNC6(ctx, action, FUNC0(F));
		return FUNC10(ctx, doc, file_spec, NULL);
	}
	else if (FUNC9(ctx, FUNC0(GoToR), obj))
	{
		dest = FUNC6(ctx, action, FUNC0(D));
		file_spec = FUNC6(ctx, action, FUNC0(F));
		return FUNC10(ctx, doc, file_spec, dest);
	}
	else if (FUNC9(ctx, FUNC0(Named), obj))
	{
		dest = FUNC6(ctx, action, FUNC0(N));

		if (FUNC9(ctx, FUNC0(FirstPage), dest))
			pagenum = 0;
		else if (FUNC9(ctx, FUNC0(LastPage), dest))
			pagenum = FUNC5(ctx, doc) - 1;
		else if (FUNC9(ctx, FUNC0(PrevPage), dest) && pagenum >= 0)
		{
			if (pagenum > 0)
				pagenum--;
		}
		else if (FUNC9(ctx, FUNC0(NextPage), dest) && pagenum >= 0)
		{
			if (pagenum < FUNC5(ctx, doc) - 1)
				pagenum++;
		}
		else
			return NULL;

		return FUNC1(ctx, "#%d", pagenum + 1);
	}

	return NULL;
}