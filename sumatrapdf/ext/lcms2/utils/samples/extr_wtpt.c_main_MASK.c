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
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigMediaWhitePointTag ; 
 int xoptind ; 

int FUNC7(int argc, char *argv[])
{
       int nargs;

       FUNC2("wtpt");
       
       FUNC0(argc, argv);

       nargs = (argc - xoptind);

       if (nargs != 1)
              FUNC1();

       else {
              cmsCIEXYZ* WtPt;
              cmsHPROFILE hProfile = FUNC5(argv[xoptind], "r");  
              if (hProfile == NULL) return 1;

              WtPt = FUNC6(hProfile, cmsSigMediaWhitePointTag);
              FUNC3(WtPt);
              FUNC4(hProfile);
       }
       
       return 0;
}