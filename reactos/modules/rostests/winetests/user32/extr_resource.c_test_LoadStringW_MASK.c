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
typedef  int /*<<< orphan*/  returnedstringw ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    HINSTANCE hInst = FUNC1(NULL);
    WCHAR copiedstringw[128], returnedstringw[128], *resourcepointer = NULL;
    char copiedstring[128], returnedstring[128];
    int length1, length2, retvalue;

    /* Check that the string which is returned by LoadStringW matches
       the string at the pointer returned by LoadStringW when called with buflen = 0 */
    FUNC3(0xdeadbeef);
    length1 = FUNC2(hInst, 2, (WCHAR *) &resourcepointer, 0); /* get pointer to resource. */
    if (!length1)
    {
        if (FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
            FUNC8( "LoadStringW not implemented\n" );
        else
            FUNC8( "LoadStringW does not return a pointer to the resource\n" );
        return;
    }
    length2 = FUNC2(hInst, 2, returnedstringw, sizeof(returnedstringw) /sizeof(WCHAR)); /* get resource string */
    FUNC7(length2 > 0, "LoadStringW failed to load resource 2, ret %d, err %d\n", length2, FUNC0());
    FUNC7(length1 == length2, "LoadStringW returned different values dependent on buflen. ret1 %d, ret2 %d\n",
        length1, length2);
    FUNC7(length1 > 0 && resourcepointer != NULL, "LoadStringW failed to get pointer to resource 2, ret %d, err %d\n",
        length1, FUNC0());

    /* Copy the resource since it is not '\0' terminated, and add '\0' to the end */
    if(resourcepointer != NULL) /* Check that the resource pointer was loaded to avoid access violation */
    {
        FUNC6(copiedstringw, resourcepointer, length1 * sizeof(WCHAR));
        copiedstringw[length1] = '\0';
        /* check that strings match */
        FUNC4( CP_ACP, 0, returnedstringw, -1, returnedstring, 128, NULL, NULL );
        FUNC4( CP_ACP, 0, copiedstringw, -1, copiedstring, 128, NULL, NULL );
        FUNC7(!FUNC5(copiedstringw, returnedstringw, (length2 + 1)*sizeof(WCHAR)),
           "strings don't match: returnedstring = %s, copiedstring = %s\n", returnedstring, copiedstring);
    }

    /* check that calling LoadStringW with buffer = NULL returns zero */
    retvalue = FUNC2(hInst, 2, NULL, 0);
    FUNC7(!retvalue, "LoadStringW returned a non-zero value when called with buffer = NULL, retvalue = %d\n", retvalue);
    /* check again, with a different buflen value, that calling LoadStringW with buffer = NULL returns zero */
    retvalue = FUNC2(hInst, 2, NULL, 128);
    FUNC7(!retvalue, "LoadStringW returned a non-zero value when called with buffer = NULL, retvalue = %d\n", retvalue);
}