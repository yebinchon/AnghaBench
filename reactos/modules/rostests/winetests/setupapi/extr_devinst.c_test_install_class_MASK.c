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
typedef  char WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DI_NOVCP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR classKey[] = {'S','y','s','t','e','m','\\',
     'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
     'C','o','n','t','r','o','l','\\','C','l','a','s','s','\\',
     '{','6','a','5','5','b','5','a','4','-','3','f','6','5','-',
     '1','1','d','b','-','b','7','0','4','-',
     '0','0','1','1','9','5','5','c','2','b','d','b','}',0};
    char tmpfile[MAX_PATH];
    BOOL ret;

    tmpfile[0] = '.';
    tmpfile[1] = '\\';
    FUNC5(tmpfile + 2);
    FUNC4(tmpfile + 2);

    ret = FUNC3(NULL, NULL, 0, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC1());

    ret = FUNC3(NULL, NULL, DI_NOVCP, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC1());

    ret = FUNC3(NULL, tmpfile + 2, DI_NOVCP, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC1());

    ret = FUNC3(NULL, tmpfile + 2, 0, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC1() == ERROR_FILE_NOT_FOUND, "Got unexpected error %#x.\n", FUNC1());

    /* The next call will succeed. Information is put into the registry but the
     * location(s) is/are depending on the Windows version.
     */
    ret = FUNC3(NULL, tmpfile, 0, NULL);
    FUNC6(ret, "Failed to install class, error %#x.\n", FUNC1());

    FUNC6(!FUNC2(HKEY_LOCAL_MACHINE, classKey), "Failed to delete class key, error %u.\n", FUNC1());
    FUNC0(tmpfile);
}