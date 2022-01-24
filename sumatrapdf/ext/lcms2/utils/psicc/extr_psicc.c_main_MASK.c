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
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OutFile ; 
 int /*<<< orphan*/ * cInProf ; 
 int /*<<< orphan*/ * cOutProf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int xoptind ; 

int FUNC7(int argc, char *argv[])
{
	int nargs;
    cmsContext ContextID = NULL;

	// Initialize
	FUNC4(NULL, "psicc");

	 FUNC2(argc, argv);

     nargs = (argc - xoptind);
	 if (nargs != 0 && nargs != 1)
				FUNC3();

    if (cInProf == NULL && cOutProf == NULL)
        FUNC3();

	 if (nargs == 0)
			OutFile = stdout;
	 else
			OutFile = FUNC6(argv[xoptind], "wt");

	  if (cInProf != NULL)
			FUNC1(ContextID);

	  if (cOutProf != NULL)
			FUNC0(ContextID);

	  if (nargs == 1) {
		  FUNC5(OutFile);
	  }

      return 0;
}