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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INSTALL_PACKAGE_REJECTED ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    MSIHANDLE hPackage = 0;
    char prop[100];
    static CHAR empty[] = "";
    DWORD size;
    UINT r;

    r = FUNC7(FUNC4(), &hPackage);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC8("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC6( r == ERROR_SUCCESS, "Failed to create package %u\n", r );

    /* set the property */
    r = FUNC3(hPackage, "Name", "Value");
    FUNC6( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* retrieve the size, NULL pointer */
    size = 0;
    r = FUNC2(hPackage, "Name", NULL, &size);
    FUNC6( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC6( size == 5, "Expected 5, got %d\n", size);

    /* retrieve the size, empty string */
    size = 0;
    r = FUNC2(hPackage, "Name", empty, &size);
    FUNC6( r == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", r);
    FUNC6( size == 5, "Expected 5, got %d\n", size);

    /* don't change size */
    r = FUNC2(hPackage, "Name", prop, &size);
    FUNC6( r == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", r);
    FUNC6( size == 5, "Expected 5, got %d\n", size);
    FUNC6( !FUNC5(prop, "Valu"), "Expected Valu, got %s\n", prop);

    /* increase the size by 1 */
    size++;
    r = FUNC2(hPackage, "Name", prop, &size);
    FUNC6( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC6( size == 5, "Expected 5, got %d\n", size);
    FUNC6( !FUNC5(prop, "Value"), "Expected Value, got %s\n", prop);

    r = FUNC1( hPackage);
    FUNC6( r == ERROR_SUCCESS , "Failed to close package\n" );
    FUNC0(msifile);
}