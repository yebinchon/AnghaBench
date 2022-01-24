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
typedef  int /*<<< orphan*/  windir ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AADBE_ADD_ENTRY ; 
 int /*<<< orphan*/  AADBE_DEL_ENTRY ; 
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    BOOL ret;
    HRESULT res;
    CHAR path[MAX_PATH];
    CHAR windir[MAX_PATH];

    FUNC9(path, CURR_DIR);
    FUNC8(path, "\\backup\\basename.INI");

    /* native AddDelBackupEntry crashes if lpcszBaseName is NULL */

    /* try a NULL file list */
    res = FUNC11(NULL, "backup", "basename", AADBE_ADD_ENTRY);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    FUNC10(!FUNC1(path), "Expected path to not exist\n");

    FUNC9(path, CURR_DIR);
    FUNC8(path, "\\backup\\.INI");

    /* try an empty base name */
    res = FUNC11("one\0two\0three\0", "backup", "", AADBE_ADD_ENTRY);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    FUNC10(!FUNC1(path), "Expected path to not exist\n");

    FUNC9(path, CURR_DIR);
    FUNC8(path, "\\basename.INI");

    /* try an invalid flag */
    res = FUNC11("one\0two\0three\0", NULL, "basename", 0);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    FUNC10(!FUNC1(path), "Expected path to not exist\n");

    FUNC9(path, "c:\\basename.INI");

    /* create the INF file */
    res = FUNC11("one\0two\0three\0", "c:\\", "basename", AADBE_ADD_ENTRY);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    if (FUNC2(path) != INVALID_FILE_ATTRIBUTES)
    {
        FUNC10(FUNC7(path), "Expected ini file to be hidden\n");
        FUNC10(FUNC1(path), "Expected path to exist\n");
    }
    else
        FUNC13("Test file could not be created\n");

    FUNC9(path, CURR_DIR);
    FUNC8(path, "\\backup\\basename.INI");

    /* try to create the INI file in a nonexistent directory */
    FUNC4("backup");
    res = FUNC11("one\0two\0three\0", "backup", "basename", AADBE_ADD_ENTRY);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    FUNC10(!FUNC7(path), "Expected ini file to not be hidden\n");
    FUNC10(!FUNC1(path), "Expected path to not exist\n");

    /* try an existent, relative backup directory */
    FUNC0("backup", NULL);
    res = FUNC11("one\0two\0three\0", "backup", "basename", AADBE_ADD_ENTRY);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    FUNC10(FUNC7(path), "Expected ini file to be hidden\n");
    FUNC10(FUNC1(path), "Expected path to exist\n");
    FUNC4("backup");

    FUNC3(windir, sizeof(windir));
    FUNC12(path, "%s\\basename.INI", windir);

    /* try a NULL backup dir, INI is created in the windows directory */
    res = FUNC11("one\0two\0three\0", NULL, "basename", AADBE_ADD_ENTRY);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);

    /* remove the entries with AADBE_DEL_ENTRY */
    FUNC5(path, FILE_ATTRIBUTE_NORMAL);
    res = FUNC11("one\0three\0", NULL, "basename", AADBE_DEL_ENTRY);
    FUNC5(path, FILE_ATTRIBUTE_NORMAL);
    FUNC10(res == S_OK, "Expected S_OK, got %d\n", res);
    ret = FUNC1(path);
    FUNC10(ret == TRUE ||
       FUNC6(ret == FALSE), /* win98 */
       "Expected path to exist\n");
}