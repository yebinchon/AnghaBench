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
typedef  int UINT ;
typedef  scalar_t__ MSIHANDLE ;
typedef  char* LPCSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_BAD_QUERY_SYNTAX ; 
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_INSTALL_PACKAGE_REJECTED ; 
 int ERROR_INVALID_HANDLE ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,char*,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    MSIHANDLE hpkg, hdb, hrec;
    CHAR buf[MAX_PATH];
    LPCSTR query;
    DWORD size;
    UINT r;

    r = FUNC9(FUNC5(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC10("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC8(r == ERROR_SUCCESS, "Expected a valid package %u\n", r);

    /* invalid hInstall */
    r = FUNC4(0, "Prop", "Val");
    FUNC8(r == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", r);

    /* invalid hInstall */
    r = FUNC4(0xdeadbeef, "Prop", "Val");
    FUNC8(r == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", r);

    /* szName is NULL */
    r = FUNC4(hpkg, NULL, "Val");
    FUNC8(r == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", r);

    /* both szName and szValue are NULL */
    r = FUNC4(hpkg, NULL, NULL);
    FUNC8(r == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", r);

    /* szName is empty */
    r = FUNC4(hpkg, "", "Val");
    FUNC8(r == ERROR_FUNCTION_FAILED,
       "Expected ERROR_FUNCTION_FAILED, got %d\n", r);

    /* szName is empty and szValue is NULL */
    r = FUNC4(hpkg, "", NULL);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* set a property */
    r = FUNC4(hpkg, "Prop", "Val");
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* get the property */
    size = MAX_PATH;
    r = FUNC3(hpkg, "Prop", buf, &size);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC8(!FUNC7(buf, "Val"), "Expected \"Val\", got \"%s\"\n", buf);
    FUNC8(size == 3, "Expected 3, got %d\n", size);

    /* update the property */
    r = FUNC4(hpkg, "Prop", "Nuvo");
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* get the property */
    size = MAX_PATH;
    r = FUNC3(hpkg, "Prop", buf, &size);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC8(!FUNC7(buf, "Nuvo"), "Expected \"Nuvo\", got \"%s\"\n", buf);
    FUNC8(size == 4, "Expected 4, got %d\n", size);

    hdb = FUNC2(hpkg);
    FUNC8(hdb != 0, "Expected a valid database handle\n");

    /* set prop is not in the _Property table */
    query = "SELECT * FROM `_Property` WHERE `Property` = 'Prop'";
    r = FUNC6(hdb, query, &hrec);
    FUNC8(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    /* set prop is not in the Property table */
    query = "SELECT * FROM `Property` WHERE `Property` = 'Prop'";
    r = FUNC6(hdb, query, &hrec);
    FUNC8(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    FUNC1(hdb);

    /* szValue is an empty string */
    r = FUNC4(hpkg, "Prop", "");
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* try to get the property */
    size = MAX_PATH;
    r = FUNC3(hpkg, "Prop", buf, &size);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC8(!FUNC7(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC8(size == 0, "Expected 0, got %d\n", size);

    /* reset the property */
    r = FUNC4(hpkg, "Prop", "BlueTap");
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* delete the property */
    r = FUNC4(hpkg, "Prop", NULL);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    /* try to get the property */
    size = MAX_PATH;
    r = FUNC3(hpkg, "Prop", buf, &size);
    FUNC8(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC8(!FUNC7(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC8(size == 0, "Expected 0, got %d\n", size);

    FUNC1(hpkg);
    FUNC0(msifile);
}