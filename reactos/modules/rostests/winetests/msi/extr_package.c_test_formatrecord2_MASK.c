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
typedef  int MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INSTALL_PACKAGE_REJECTED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    MSIHANDLE hpkg, hrec ;
    char buffer[0x100];
    DWORD sz;
    UINT r;

    r = FUNC9(FUNC7(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC10("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC8( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    r = FUNC5(hpkg, "Manufacturer", " " );
    FUNC8( r == ERROR_SUCCESS, "set property failed\n");

    hrec = FUNC2(2);
    FUNC8(hrec, "create record failed\n");

    r = FUNC4( hrec, 0, "[ProgramFilesFolder][Manufacturer]\\asdf");
    FUNC8( r == ERROR_SUCCESS, "format record failed\n");

    buffer[0] = 0;
    sz = sizeof buffer;
    r = FUNC3( hpkg, hrec, buffer, &sz );
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);

    r = FUNC4(hrec, 0, "[foo][1]");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    r = FUNC4(hrec, 1, "hoo");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = FUNC3(hpkg, hrec, buffer, &sz);
    FUNC8( sz == 3, "size wrong\n");
    FUNC8( 0 == FUNC11(buffer,"hoo"), "wrong output %s\n",buffer);
    FUNC8( r == ERROR_SUCCESS, "format failed\n");

    r = FUNC4(hrec, 0, "x[~]x");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = FUNC3(hpkg, hrec, buffer, &sz);
    FUNC8( sz == 3, "size wrong\n");
    FUNC8( 0 == FUNC11(buffer,"x"), "wrong output %s\n",buffer);
    FUNC8( r == ERROR_SUCCESS, "format failed\n");

    r = FUNC4(hrec, 0, "[foo.$%}][1]");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    r = FUNC4(hrec, 1, "hoo");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = FUNC3(hpkg, hrec, buffer, &sz);
    FUNC8( sz == 3, "size wrong\n");
    FUNC8( 0 == FUNC11(buffer,"hoo"), "wrong output %s\n",buffer);
    FUNC8( r == ERROR_SUCCESS, "format failed\n");

    r = FUNC4(hrec, 0, "[\\[]");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = FUNC3(hpkg, hrec, buffer, &sz);
    FUNC8( sz == 1, "size wrong\n");
    FUNC8( 0 == FUNC11(buffer,"["), "wrong output %s\n",buffer);
    FUNC8( r == ERROR_SUCCESS, "format failed\n");

    FUNC6("FOO", "BAR");
    r = FUNC4(hrec, 0, "[%FOO]");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = FUNC3(hpkg, hrec, buffer, &sz);
    FUNC8( sz == 3, "size wrong\n");
    FUNC8( 0 == FUNC11(buffer,"BAR"), "wrong output %s\n",buffer);
    FUNC8( r == ERROR_SUCCESS, "format failed\n");

    r = FUNC4(hrec, 0, "[[1]]");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    r = FUNC4(hrec, 1, "%FOO");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = FUNC3(hpkg, hrec, buffer, &sz);
    FUNC8( sz == 3, "size wrong\n");
    FUNC8( 0 == FUNC11(buffer,"BAR"), "wrong output %s\n",buffer);
    FUNC8( r == ERROR_SUCCESS, "format failed\n");

    FUNC1( hrec );
    FUNC1( hpkg );
    FUNC0(msifile);
}