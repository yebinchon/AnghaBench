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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int string ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 

int
FUNC10(int argc, char **argv)
{
	FILE *fo;
	FILE *fi;
	char name[256];
	char *basename;
	char *p;
	int i, optind, size;

	if (argc < 3)
	{
		FUNC2(stderr, "usage: hexdump [-0] [-s] output.c input.dat\n");
		return 1;
	}

	string = 0;
	optind = 1;

	if (!FUNC6(argv[optind], "-s")) {
		++optind;
		string = 1;
	}

	fo = FUNC1(argv[optind], "wb");
	if (!fo)
	{
		FUNC2(stderr, "hexdump: could not open output file '%s'\n", argv[optind]);
		return 1;
	}

	for (i = optind+1; i < argc; i++)
	{
		fi = FUNC1(argv[i], "rb");
		if (!fi)
		{
			FUNC0(fo);
			FUNC2(stderr, "hexdump: could not open input file '%s'\n", argv[i]);
			return 1;
		}

		basename = FUNC9(argv[i], '/');
		if (!basename)
			basename = FUNC9(argv[i], '\\');
		if (basename)
			basename++;
		else
			basename = argv[i];

		if (FUNC8(basename) >= sizeof(name))
		{
			FUNC0(fi);
			FUNC0(fo);
			FUNC2(stderr, "hexdump: filename '%s' too long\n", basename);
			return 1;
		}

		FUNC7(name, basename);
		for (p = name; *p; ++p)
		{
			if (*p == '/' || *p == '.' || *p == '\\' || *p == '-')
				*p = '_';
		}

		FUNC3(fi, 0, SEEK_END);
		size = FUNC4(fi);
		FUNC3(fi, 0, SEEK_SET);

		FUNC2(*fo, "const unsigned char _binary_%s[%d] =", name, size);
		FUNC2(*fo, string ? "\n" : " {\n");
		FUNC5(fo, fi);
		FUNC2(*fo, string ? ";\n" : "};\n");
		FUNC2(*fo, "unsigned int _binary_%s_size = %d;\n", name, size);

		FUNC0(fi);
	}

	if (FUNC0(fo))
	{
		FUNC2(stderr, "hexdump: could not close output file '%s'\n", argv[1]);
		return 1;
	}

	return 0;
}