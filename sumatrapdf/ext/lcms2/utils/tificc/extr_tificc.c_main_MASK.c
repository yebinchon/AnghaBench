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
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  ConsoleErrorHandler ; 
 int /*<<< orphan*/  ConsoleWarningHandler ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TiffLabPlugin ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/  cInpProf ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int xoptind ; 

int FUNC13(int argc, char* argv[])
{
    TIFF *in, *out;

    FUNC10(&TiffLabPlugin);

    FUNC3(NULL, "tificc");

    FUNC1(argc, argv);

    if ((argc - xoptind) != 2) {

        FUNC2(0);
    }


    FUNC7(ConsoleErrorHandler);
    FUNC8(ConsoleWarningHandler);

    in = FUNC5(argv[xoptind], "r");
    if (in == NULL) FUNC0("Unable to open '%s'", argv[xoptind]);

    out = FUNC5(argv[xoptind+1], "w");

    if (out == NULL) {

        FUNC4(in);
        FUNC0("Unable to write '%s'", argv[xoptind+1]);
    }

    do {

        FUNC9(in, out, cInpProf);


    } while (FUNC6(in));


    if (Verbose) { FUNC12(stdout, "\n"); FUNC11(stdout); }

    FUNC4(in);
    FUNC4(out);

    return 0;
}