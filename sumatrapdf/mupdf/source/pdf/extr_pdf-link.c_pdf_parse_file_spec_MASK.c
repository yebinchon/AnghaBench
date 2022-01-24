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
 int /*<<< orphan*/  DOS ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  FS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UF ; 
 int /*<<< orphan*/  URL ; 
 int /*<<< orphan*/  Unix ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *
FUNC15(fz_context *ctx, pdf_document *doc, pdf_obj *file_spec, pdf_obj *dest)
{
	pdf_obj *filename = NULL;
	const char *path;
	char *uri;
	char frag[256];

	if (FUNC10(ctx, file_spec))
		filename = file_spec;

	if (FUNC8(ctx, file_spec)) {
#ifdef _WIN32
		filename = pdf_dict_get(ctx, file_spec, PDF_NAME(DOS));
#else
		filename = FUNC5(ctx, file_spec, FUNC0(Unix));
#endif
		if (!filename)
			filename = FUNC6(ctx, file_spec, FUNC0(UF), FUNC0(F));
	}

	if (!FUNC10(ctx, filename))
	{
		FUNC3(ctx, "cannot parse file specification");
		return NULL;
	}

	if (FUNC7(ctx, dest))
		FUNC2(frag, sizeof frag, "#page=%d", FUNC4(ctx, dest, 0) + 1);
	else if (FUNC9(ctx, dest))
		FUNC2(frag, sizeof frag, "#%s", FUNC12(ctx, dest));
	else if (FUNC10(ctx, dest))
		FUNC2(frag, sizeof frag, "#%s", FUNC13(ctx, dest));
	else
		frag[0] = 0;

	path = FUNC14(ctx, filename);
	uri = NULL;
#ifdef _WIN32
	if (!pdf_name_eq(ctx, pdf_dict_get(ctx, file_spec, PDF_NAME(FS)), PDF_NAME(URL)))
	{
		/* Fix up the drive letter (change "/C/Documents/Foo" to "C:/Documents/Foo") */
		if (path[0] == '/' && (('A' <= path[1] && path[1] <= 'Z') || ('a' <= path[1] && path[1] <= 'z')) && path[2] == '/')
			uri = fz_asprintf(ctx, "file://%c:%s%s", path[1], path+2, frag);
	}
#endif
	if (!uri)
		uri = FUNC1(ctx, "file://%s%s", path, frag);

	return uri;
}