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

/* Variables and functions */
 int /*<<< orphan*/  FZ_STORE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* fz_optarg ; 
 int fz_optind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdf_default_write_options ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(int argc, char **argv)
{
	pdf_write_options opts = pdf_default_write_options;
	char *output = "out.pdf";
	char *flags = "compress";
	int i, c;

	while ((c = FUNC5(argc, argv, "o:O:")) != -1)
	{
		switch (c)
		{
		case 'o': output = fz_optarg; break;
		case 'O': flags = fz_optarg; break;
		default: FUNC11(); break;
		}
	}

	if (fz_optind == argc)
		FUNC11();

	ctx = FUNC6(NULL, NULL, FZ_STORE_UNLIMITED);
	if (!ctx)
	{
		FUNC2(stderr, "cannot initialise context\n");
		FUNC1(1);
	}

	FUNC9(ctx, &opts, flags);

	doc = FUNC7(ctx);

	for (i = fz_optind; i < argc; ++i)
		FUNC0(argv[i]);

	FUNC10(ctx, doc, output, &opts);

	FUNC8(ctx, doc);

	FUNC4(ctx);
	FUNC3(ctx);
	return 0;
}