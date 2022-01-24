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
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ CSTR_EQUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 int FUNC3 (char*,char*,char*,int*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BOOL ret, mustcopy=TRUE;
    CHAR linkto[MAX_PATH];
    CHAR destdir[MAX_PATH];
    CHAR result[MAX_PATH];
    CHAR result2[MAX_PATH];

    /* source file does not exist */
    FUNC9(linkto, "nosuchfile.txt\0");
    FUNC9(destdir, "testdir2\0");
    ret = FUNC3(linkto, destdir, result, &mustcopy, 0);
    FUNC8(ret == FALSE ||
       FUNC4(ret == FUNC7(result) + 1), /* NT4 */
       "SHGetNewLinkInfoA succeeded\n");
    FUNC8(mustcopy == FALSE, "mustcopy should be FALSE\n");

    /* dest dir does not exist */
    FUNC9(linkto, "test1.txt\0");
    FUNC9(destdir, "nosuchdir\0");
    ret = FUNC3(linkto, destdir, result, &mustcopy, 0);
    FUNC8(ret == TRUE ||
       FUNC4(ret == FUNC7(result) + 1), /* NT4 */
       "SHGetNewLinkInfoA failed, err=%i\n", FUNC2());
    FUNC8(mustcopy == FALSE, "mustcopy should be FALSE\n");

    /* source file exists */
    FUNC9(linkto, "test1.txt\0");
    FUNC9(destdir, "testdir2\0");
    ret = FUNC3(linkto, destdir, result, &mustcopy, 0);
    FUNC8(ret == TRUE ||
       FUNC4(ret == FUNC7(result) + 1), /* NT4 */
       "SHGetNewLinkInfoA failed, err=%i\n", FUNC2());
    FUNC8(mustcopy == FALSE, "mustcopy should be FALSE\n");
    FUNC8(FUNC0(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE, destdir,
                      FUNC7(destdir), result, FUNC7(destdir)) == CSTR_EQUAL,
       "%s does not start with %s\n", result, destdir);
    FUNC8(FUNC7(result) > 4 && FUNC6(result+FUNC7(result)-4, ".lnk") == 0,
       "%s does not end with .lnk\n", result);

    /* preferred target name already exists */
    FUNC5(result);
    ret = FUNC3(linkto, destdir, result2, &mustcopy, 0);
    FUNC8(ret == TRUE ||
       FUNC4(ret == FUNC7(result2) + 1), /* NT4 */
       "SHGetNewLinkInfoA failed, err=%i\n", FUNC2());
    FUNC8(mustcopy == FALSE, "mustcopy should be FALSE\n");
    FUNC8(FUNC0(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE, destdir,
                      FUNC7(destdir), result2, FUNC7(destdir)) == CSTR_EQUAL,
       "%s does not start with %s\n", result2, destdir);
    FUNC8(FUNC7(result2) > 4 && FUNC6(result2+FUNC7(result2)-4, ".lnk") == 0,
       "%s does not end with .lnk\n", result2);
    FUNC8(FUNC6(result, result2) != 0, "%s and %s are the same\n", result, result2);
    FUNC1(result);
}