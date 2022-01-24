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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/ * cmsHANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigMetaTag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC10(void)
{
    char *data;
    cmsHANDLE dict;
    cmsHPROFILE p;
    cmsUInt32Number clen;
    FILE *fp;
    int rc;

    /* open file */
    p = FUNC2(FUNC0(), "ibm-t61.icc", "r");
    if (p == NULL) return 0;

    /* read dictionary, but don't do anything with the value */
    //COMMENT OUT THE NEXT TWO LINES AND IT WORKS FINE!!!
    dict = FUNC3(FUNC0(), p, cmsSigMetaTag);
    if (dict == NULL) return 0;

    /* serialize profile to memory */
    rc = FUNC4(FUNC0(), p, NULL, &clen);
    if (!rc) return 0;

    data = (char*) FUNC9(clen);
    rc = FUNC4(FUNC0(), p, data, &clen);
    if (!rc) return 0;

    /* write the memory blob to a file */
    //NOTE: The crash does not happen if cmsSaveProfileToFile() is used */
    fp = FUNC6("new.icc", "wb");
    FUNC8(data, 1, clen, fp);
    FUNC5(fp);
    FUNC7(data);

    FUNC1(FUNC0(), p);

    /* open newly created file and read metadata */
    p = FUNC2(FUNC0(), "new.icc", "r");
    //ERROR: Bad dictionary Name/Value
    //ERROR: Corrupted tag 'meta'
    //test: test.c:59: main: Assertion `dict' failed.
    dict = FUNC3(FUNC0(), p, cmsSigMetaTag);
   if (dict == NULL) return 0;

   FUNC1(FUNC0(), p);
    return 1;
}