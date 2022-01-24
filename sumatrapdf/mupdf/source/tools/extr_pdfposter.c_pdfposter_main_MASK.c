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
typedef  int /*<<< orphan*/  pdf_write_options ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FZ_STORE_UNLIMITED ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* fz_optarg ; 
 int fz_optind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  pdf_default_write_options ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* x_factor ; 
 void* y_factor ; 

int FUNC15(int argc, char **argv)
{
	char *infile;
	char *outfile = "out.pdf";
	char *password = "";
	int c;
	pdf_write_options opts = pdf_default_write_options;
	pdf_document *doc;
	fz_context *ctx;

	while ((c = FUNC5(argc, argv, "x:y:")) != -1)
	{
		switch (c)
		{
		case 'p': password = fz_optarg; break;
		case 'x': x_factor = FUNC0(fz_optarg); break;
		case 'y': y_factor = FUNC0(fz_optarg); break;
		default: FUNC14(); break;
		}
	}

	if (argc - fz_optind < 1)
		FUNC14();

	infile = argv[fz_optind++];

	if (argc - fz_optind > 0 &&
		(FUNC13(argv[fz_optind], ".pdf") || FUNC13(argv[fz_optind], ".PDF")))
	{
		outfile = argv[fz_optind++];
	}

	ctx = FUNC6(NULL, NULL, FZ_STORE_UNLIMITED);
	if (!ctx)
	{
		FUNC3(stderr, "cannot initialise context\n");
		FUNC2(1);
	}

	doc = FUNC11(ctx, infile);
	if (FUNC10(ctx, doc))
		if (!FUNC8(ctx, doc, password))
			FUNC7(ctx, FZ_ERROR_GENERIC, "cannot authenticate password: %s", infile);

	FUNC1(ctx, doc);

	FUNC12(ctx, doc, outfile, &opts);

	FUNC9(ctx, doc);
	FUNC4(ctx);
	return 0;
}