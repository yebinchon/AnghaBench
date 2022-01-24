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
typedef  scalar_t__* LPSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_INSTALL_PACKAGE_REJECTED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  INSTALLUILEVEL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 char* msifile ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC25 (char*,char) ; 

__attribute__((used)) static void FUNC26(void)
{
    MSIHANDLE hpkg, hdb;
    char path[MAX_PATH], expected[MAX_PATH], prop[MAX_PATH];
    BOOL version;
    LPSTR ptr;
    DWORD size;
    UINT r;

    version = TRUE;
    if (!FUNC11("test.dll", FUNC1(2, 1), FUNC1(4, 3)))
        version = FALSE;

    FUNC0("test.dll");

    FUNC6("Section", "Key", "keydata,field2", "IniFile.ini");

    FUNC24(expected, CURR_DIR);
    if (FUNC17(CURR_DIR)) expected[2] = 0;

    FUNC15("FileName1");
    FUNC23(path, "%s\\FileName1", expected);
    FUNC6("Section", "Key2", path, "IniFile.ini");

    FUNC6("Section", "Key3", expected, "IniFile.ini");

    FUNC23(path, "%s\\IDontExist", expected);
    FUNC6("Section", "Key4", path, "IniFile.ini");

    FUNC11("FileName2.dll", FUNC1(2, 1), FUNC1(4, 3));
    FUNC23(path, "%s\\FileName2.dll", expected);
    FUNC6("Section", "Key5", path, "IniFile.ini");

    FUNC11("FileName3.dll", FUNC1(1, 2), FUNC1(3, 4));
    FUNC23(path, "%s\\FileName3.dll", expected);
    FUNC6("Section", "Key6", path, "IniFile.ini");

    FUNC11("FileName4.dll", FUNC1(2, 1), FUNC1(4, 3));
    FUNC23(path, "%s\\FileName4.dll", expected);
    FUNC6("Section", "Key7", path, "IniFile.ini");

    hdb = FUNC13();
    FUNC20(hdb, "Expected a valid database handle\n");

    FUNC10(hdb);
    FUNC7(hdb, "'SIGPROP1', 'NewSignature1'");
    FUNC7(hdb, "'SIGPROP2', 'NewSignature2'");
    FUNC7(hdb, "'SIGPROP3', 'NewSignature3'");
    FUNC7(hdb, "'SIGPROP4', 'NewSignature4'");
    FUNC7(hdb, "'SIGPROP5', 'NewSignature5'");
    FUNC7(hdb, "'SIGPROP6', 'NewSignature6'");
    FUNC7(hdb, "'SIGPROP7', 'NewSignature7'");
    FUNC7(hdb, "'SIGPROP8', 'NewSignature8'");
    FUNC7(hdb, "'SIGPROP9', 'NewSignature9'");
    FUNC7(hdb, "'SIGPROP10', 'NewSignature10'");
    FUNC7(hdb, "'SIGPROP11', 'NewSignature11'");
    FUNC7(hdb, "'SIGPROP12', 'NewSignature12'");

    FUNC12(hdb);

    /* msidbLocatorTypeRawValue, field 1 */
    FUNC8(hdb, "'NewSignature1', 'IniFile.ini', 'Section', 'Key', 1, 2");

    /* msidbLocatorTypeRawValue, field 2 */
    FUNC8(hdb, "'NewSignature2', 'IniFile.ini', 'Section', 'Key', 2, 2");

    /* msidbLocatorTypeRawValue, entire field */
    FUNC8(hdb, "'NewSignature3', 'IniFile.ini', 'Section', 'Key', 0, 2");

    /* msidbLocatorTypeFile */
    FUNC8(hdb, "'NewSignature4', 'IniFile.ini', 'Section', 'Key2', 1, 1");

    /* msidbLocatorTypeDirectory, file */
    FUNC8(hdb, "'NewSignature5', 'IniFile.ini', 'Section', 'Key2', 1, 0");

    /* msidbLocatorTypeDirectory, directory */
    FUNC8(hdb, "'NewSignature6', 'IniFile.ini', 'Section', 'Key3', 1, 0");

    /* msidbLocatorTypeFile, file, no signature */
    FUNC8(hdb, "'NewSignature7', 'IniFile.ini', 'Section', 'Key2', 1, 1");

    /* msidbLocatorTypeFile, dir, no signature */
    FUNC8(hdb, "'NewSignature8', 'IniFile.ini', 'Section', 'Key3', 1, 1");

    /* msidbLocatorTypeFile, file does not exist */
    FUNC8(hdb, "'NewSignature9', 'IniFile.ini', 'Section', 'Key4', 1, 1");

    /* msidbLocatorTypeFile, signature with version */
    FUNC8(hdb, "'NewSignature10', 'IniFile.ini', 'Section', 'Key5', 1, 1");

    /* msidbLocatorTypeFile, signature with version, ver > max */
    FUNC8(hdb, "'NewSignature11', 'IniFile.ini', 'Section', 'Key6', 1, 1");

    /* msidbLocatorTypeFile, signature with version, sig->name ignored */
    FUNC8(hdb, "'NewSignature12', 'IniFile.ini', 'Section', 'Key7', 1, 1");

    FUNC14(hdb);
    FUNC9(hdb, "'NewSignature4', 'FileName1', '', '', '', '', '', '', ''");
    FUNC9(hdb, "'NewSignature9', 'IDontExist', '', '', '', '', '', '', ''");
    FUNC9(hdb, "'NewSignature10', 'FileName2.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''");
    FUNC9(hdb, "'NewSignature11', 'FileName3.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''");
    FUNC9(hdb, "'NewSignature12', 'ignored', '1.1.1.1', '2.1.1.1', '', '', '', '', ''");

    r = FUNC21(hdb, &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC22("Not enough rights to perform tests\n");
        goto error;
    }
    FUNC20(r == ERROR_SUCCESS, "Expected a valid package handle %u\n", r);

    FUNC5(INSTALLUILEVEL_NONE, NULL);

    r = FUNC3(hpkg, "AppSearch");
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    size = MAX_PATH;
    r = FUNC4(hpkg, "SIGPROP1", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, "keydata"), "Expected \"keydata\", got \"%s\"\n", prop);

    size = MAX_PATH;
    r = FUNC4(hpkg, "SIGPROP2", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, "field2"), "Expected \"field2\", got \"%s\"\n", prop);

    size = MAX_PATH;
    r = FUNC4(hpkg, "SIGPROP3", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, "keydata,field2"),
       "Expected \"keydata,field2\", got \"%s\"\n", prop);

    size = MAX_PATH;
    FUNC23(path, "%s\\FileName1", expected);
    r = FUNC4(hpkg, "SIGPROP4", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    r = FUNC4(hpkg, "SIGPROP5", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, ""), "Expected \"\", got \"%s\"\n", prop);

    size = MAX_PATH;
    FUNC23(path, "%s\\", expected);
    r = FUNC4(hpkg, "SIGPROP6", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    size = MAX_PATH;
    FUNC23(path, "%s\\", expected);
    r = FUNC4(hpkg, "SIGPROP7", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

    if (!FUNC17(CURR_DIR))
    {
        size = MAX_PATH;
        FUNC19(path, expected);
        ptr = FUNC25(path, '\\');
        *(ptr + 1) = 0;
        r = FUNC4(hpkg, "SIGPROP8", prop, &size);
        FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC20(!FUNC18(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);
    }
    size = MAX_PATH;
    r = FUNC4(hpkg, "SIGPROP9", prop, &size);
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC20(!FUNC18(prop, ""), "Expected \"\", got \"%s\"\n", prop);

    if (version)
    {
        size = MAX_PATH;
        FUNC23(path, "%s\\FileName2.dll", expected);
        r = FUNC4(hpkg, "SIGPROP10", prop, &size);
        FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC20(!FUNC18(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);

        size = MAX_PATH;
        r = FUNC4(hpkg, "SIGPROP11", prop, &size);
        FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC20(!FUNC18(prop, ""), "Expected \"\", got \"%s\"\n", prop);

        size = MAX_PATH;
        FUNC23(path, "%s\\FileName4.dll", expected);
        r = FUNC4(hpkg, "SIGPROP12", prop, &size);
        FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
        FUNC20(!FUNC18(prop, path), "Expected \"%s\", got \"%s\"\n", path, prop);
    }

    FUNC2(hpkg);

error:
    FUNC16("IniFile.ini");
    FUNC0("FileName1");
    FUNC0("FileName2.dll");
    FUNC0("FileName3.dll");
    FUNC0("FileName4.dll");
    FUNC0(msifile);
}