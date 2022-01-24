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
typedef  char* UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* ERROR_INSTALL_PACKAGE_REJECTED ; 
 char* ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  INSTALLUILEVEL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 char* msifile ; 
 int /*<<< orphan*/  FUNC22 (int,char*,...) ; 
 char* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 

__attribute__((used)) static void FUNC28(void)
{
    MSIHANDLE hpkg, hdb;
    char path[MAX_PATH], expected[MAX_PATH], prop[MAX_PATH];
    BOOL version;
    DWORD size;
    UINT r;

    version = TRUE;
    if (!FUNC14("test.dll", FUNC2(2, 1), FUNC2(4, 3)))
        version = FALSE;

    FUNC1("test.dll");

    FUNC18("FileName1");
    FUNC0("one", NULL);
    FUNC0("one\\two", NULL);
    FUNC0("one\\two\\three", NULL);
    FUNC18("one\\two\\three\\FileName2");
    FUNC0("another", NULL);
    FUNC14("FileName3.dll", FUNC2(2, 1), FUNC2(4, 3));
    FUNC14("FileName4.dll", FUNC2(1, 2), FUNC2(3, 4));
    FUNC14("FileName5.dll", FUNC2(2, 1), FUNC2(4, 3));

    hdb = FUNC15();
    FUNC22(hdb, "Expected a valid database handle\n");

    FUNC12(hdb);
    FUNC8(hdb, "'SIGPROP1', 'NewSignature1'");
    FUNC8(hdb, "'SIGPROP2', 'NewSignature2'");
    FUNC8(hdb, "'SIGPROP3', 'NewSignature3'");
    FUNC8(hdb, "'SIGPROP4', 'NewSignature4'");
    FUNC8(hdb, "'SIGPROP5', 'NewSignature5'");
    FUNC8(hdb, "'SIGPROP6', 'NewSignature6'");
    FUNC8(hdb, "'SIGPROP7', 'NewSignature7'");
    FUNC8(hdb, "'SIGPROP8', 'NewSignature8'");
    FUNC8(hdb, "'SIGPROP9', 'NewSignature9'");
    FUNC8(hdb, "'SIGPROP10', 'NewSignature10'");
    FUNC8(hdb, "'SIGPROP11', 'NewSignature11'");
    FUNC8(hdb, "'SIGPROP13', 'NewSignature13'");

    FUNC13(hdb);

    FUNC27(expected, CURR_DIR);
    if (FUNC19(CURR_DIR)) expected[2] = 0;

    /* no parent, full path, depth 0, signature */
    FUNC26(path, "'NewSignature1', '', '%s', 0", expected);
    FUNC9(hdb, path);

    /* no parent, full path, depth 0, no signature */
    FUNC26(path, "'NewSignature2', '', '%s', 0", expected);
    FUNC9(hdb, path);

    /* no parent, relative path, depth 0, no signature */
    FUNC26(path, "'NewSignature3', '', '%s', 0", expected + 3);
    FUNC9(hdb, path);

    /* no parent, full path, depth 2, signature */
    FUNC26(path, "'NewSignature4', '', '%s', 2", expected);
    FUNC9(hdb, path);

    /* no parent, full path, depth 3, signature */
    FUNC26(path, "'NewSignature5', '', '%s', 3", expected);
    FUNC9(hdb, path);

    /* no parent, full path, depth 1, signature is dir */
    FUNC26(path, "'NewSignature6', '', '%s', 1", expected);
    FUNC9(hdb, path);

    /* parent is in DrLocator, relative path, depth 0, signature */
    FUNC26(path, "'NewSignature7', 'NewSignature1', 'one\\two\\three', 1");
    FUNC9(hdb, path);

    /* no parent, full path, depth 0, signature w/ version */
    FUNC26(path, "'NewSignature8', '', '%s', 0", expected);
    FUNC9(hdb, path);

    /* no parent, full path, depth 0, signature w/ version, ver > max */
    FUNC26(path, "'NewSignature9', '', '%s', 0", expected);
    FUNC9(hdb, path);

    /* no parent, full path, depth 0, signature w/ version, sig->name not ignored */
    FUNC26(path, "'NewSignature10', '', '%s', 0", expected);
    FUNC9(hdb, path);

    /* no parent, relative empty path, depth 0, no signature */
    FUNC26(path, "'NewSignature11', '', '', 0");
    FUNC9(hdb, path);

    FUNC16(hdb);

    /* parent */
    FUNC10(hdb, "NewSignature12", 2, "htmlfile\\shell\\open\\nonexistent", "", 1);

    /* parent is in RegLocator, no path, depth 0, no signature */
    FUNC26(path, "'NewSignature13', 'NewSignature12', '', 0");
    FUNC9(hdb, path);

    FUNC17(hdb);
    FUNC11(hdb, "'NewSignature1', 'FileName1', '', '', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature4', 'FileName2', '', '', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature5', 'FileName2', '', '', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature6', 'another', '', '', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature7', 'FileName2', '', '', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature8', 'FileName3.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature9', 'FileName4.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''");
    FUNC11(hdb, "'NewSignature10', 'necessary', '1.1.1.1', '2.1.1.1', '', '', '', '', ''");

    r = FUNC23(hdb, &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC25("Not enough rights to perform tests\n");
        goto error;
    }
    FUNC22(r == ERROR_SUCCESS, "Expected a valid package handle %u\n", r);

    FUNC6(INSTALLUILEVEL_NONE, NULL);

    r = FUNC4(hpkg, "AppSearch");
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    FUNC26(path, "%s\\FileName1", expected);
    r = FUNC5(hpkg, "SIGPROP1", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    FUNC26(path, "%s\\", expected);
    r = FUNC5(hpkg, "SIGPROP2", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    FUNC24(path, expected + 3);
    r = FUNC5(hpkg, "SIGPROP3", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC21(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    r = FUNC5(hpkg, "SIGPROP4", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(prop, ""), "Expected \"\", got \"%s\"\n", prop);

    size = MAX_PATH;
    FUNC26(path, "%s\\one\\two\\three\\FileName2", expected);
    r = FUNC5(hpkg, "SIGPROP5", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    r = FUNC5(hpkg, "SIGPROP6", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(prop, ""), "Expected \"\", got \"%s\"\n", prop);

    size = MAX_PATH;
    FUNC26(path, "%s\\one\\two\\three\\FileName2", expected);
    r = FUNC5(hpkg, "SIGPROP7", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC20(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    if (version)
    {
        size = MAX_PATH;
        FUNC26(path, "%s\\FileName3.dll", expected);
        r = FUNC5(hpkg, "SIGPROP8", prop, &size);
        FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC22(!FUNC20(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

        size = MAX_PATH;
        r = FUNC5(hpkg, "SIGPROP9", prop, &size);
        FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC22(!FUNC20(prop, ""), "Expected \"\", got \"%s\"\n", prop);

        size = MAX_PATH;
        r = FUNC5(hpkg, "SIGPROP10", prop, &size);
        FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC22(!FUNC20(prop, ""), "Expected \"\", got \"%s\"\n", prop);
    }

    size = MAX_PATH;
    FUNC24(path, "");
    r = FUNC5(hpkg, "SIGPROP11", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!FUNC21(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    FUNC27(path, "c:\\");
    r = FUNC5(hpkg, "SIGPROP13", prop, &size);
    FUNC22(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC22(!prop[0], "Expected \"\", got \"%s\"\n", prop);

    FUNC3(hpkg);

error:
    FUNC1("FileName1");
    FUNC1("FileName3.dll");
    FUNC1("FileName4.dll");
    FUNC1("FileName5.dll");
    FUNC1("one\\two\\three\\FileName2");
    FUNC7("one\\two\\three");
    FUNC7("one\\two");
    FUNC7("one");
    FUNC7("another");
    FUNC1(msifile);
}