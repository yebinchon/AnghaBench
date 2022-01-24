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
typedef  int /*<<< orphan*/  cmsFloat64Number ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

int FUNC10(int argc, char *argv[])
{
       cmsHPROFILE hProfile;
	   char* ptr;
	   cmsFloat64Number Version;

	   if (argc != 3)  return FUNC0();

	   ptr = argv[1];
	   if (FUNC9(ptr, "--r", 3) != 0) return FUNC0();
	   ptr += 3;
	   if (!*ptr) { FUNC6(stderr, "Wrong version number\n"); return 1; }

	   Version = FUNC1(ptr); 

	   hProfile = FUNC3(argv[2], "r");
	   if (hProfile == NULL) { FUNC6(stderr, "'%s': cannot open\n", argv[2]); return 1; }

	   FUNC5(hProfile, Version);
	   FUNC4(hProfile, "$$tmp.icc");
	   FUNC2(hProfile);

	   FUNC7(argv[2]);
	   FUNC8("$$tmp.icc", argv[2]);
	   return 0;


}