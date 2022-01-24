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

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FZ_STORE_UNLIMITED ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int doicc ; 
 int /*<<< orphan*/  dorgb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* fz_optarg ; 
 int fz_optind ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(int argc, char **argv)
{
	char *infile;
	char *password = "";
	int c, o;

	while ((c = FUNC8(argc, argv, "p:rN")) != -1)
	{
		switch (c)
		{
		case 'p': password = fz_optarg; break;
		case 'r': dorgb++; break;
		case 'N': doicc^=1; break;
		default: FUNC16(); break;
		}
	}

	if (fz_optind == argc)
		FUNC16();

	infile = argv[fz_optind++];

	ctx = FUNC9(NULL, NULL, FZ_STORE_UNLIMITED);
	if (!ctx)
	{
		FUNC3(stderr, "cannot initialise context\n");
		FUNC1(1);
	}

	if (doicc)
		FUNC6(ctx);
	else
		FUNC4(ctx);

	doc = FUNC15(ctx, infile);
	if (FUNC14(ctx, doc))
		if (!FUNC11(ctx, doc, password))
			FUNC10(ctx, FZ_ERROR_GENERIC, "cannot authenticate password: %s", infile);

	if (fz_optind == argc)
	{
		int len = FUNC12(ctx, doc);
		for (o = 1; o < len; o++)
			FUNC2(o);
	}
	else
	{
		while (fz_optind < argc)
		{
			FUNC2(FUNC0(argv[fz_optind]));
			fz_optind++;
		}
	}

	FUNC13(ctx, doc);
	FUNC7(ctx);
	FUNC5(ctx);
	return 0;
}