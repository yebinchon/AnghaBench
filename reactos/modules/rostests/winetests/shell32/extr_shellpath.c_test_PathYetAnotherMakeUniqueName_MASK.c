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
typedef  float WCHAR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_FLAG_DELETE_ON_CLOSE ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (float*,float const*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,float const*,float const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (float*) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR shortW[] = {'f','i','l','e','.','t','s','t',0};
    static const WCHAR short2W[] = {'f','i','l','e',' ','(','2',')','.','t','s','t',0};
    static const WCHAR tmpW[] = {'t','m','p',0};
    static const WCHAR longW[] = {'n','a','m','e',0};
    static const WCHAR long2W[] = {'n','a','m','e',' ','(','2',')',0};
    WCHAR nameW[MAX_PATH], buffW[MAX_PATH], pathW[MAX_PATH];
    HANDLE file;
    BOOL ret;

    if (!&pPathYetAnotherMakeUniqueName)
    {
        FUNC9("PathYetAnotherMakeUniqueName() is not available.\n");
        return;
    }

if (0)
{
    /* crashes on Windows */
    ret = FUNC8(NULL, NULL, NULL, NULL);
    FUNC7(!ret, "got %d\n", ret);

    ret = FUNC8(nameW, NULL, NULL, NULL);
    FUNC7(!ret, "got %d\n", ret);
}

    FUNC3(FUNC0(pathW), pathW);

    /* Using short name only first */
    nameW[0] = 0;
    ret = FUNC8(nameW, pathW, shortW, NULL);
    FUNC7(ret, "got %d\n", ret);
    FUNC6(buffW, pathW);
    FUNC4(buffW, shortW);
    FUNC7(!FUNC5(nameW, buffW), "got %s, expected %s\n", FUNC10(nameW), FUNC10(buffW));

    /* now create a file with this name and get next name */
    file = FUNC2(nameW, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_FLAG_DELETE_ON_CLOSE, NULL);
    FUNC7(file != NULL, "got %p\n", *file);

    nameW[0] = 0;
    ret = FUNC8(nameW, pathW, shortW, NULL);
    FUNC7(ret, "got %d\n", ret);
    FUNC6(buffW, pathW);
    FUNC4(buffW, short2W);
    FUNC7(!FUNC5(nameW, buffW), "got %s, expected %s\n", FUNC10(nameW), FUNC10(buffW));

    FUNC1(file);

    /* Using short and long */
    nameW[0] = 0;
    ret = FUNC8(nameW, pathW, tmpW, longW);
    FUNC7(ret, "got %d\n", ret);
    FUNC6(buffW, pathW);
    FUNC4(buffW, longW);
    FUNC7(!FUNC5(nameW, buffW), "got %s, expected %s\n", FUNC10(nameW), FUNC10(buffW));

    file = FUNC2(nameW, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_FLAG_DELETE_ON_CLOSE, NULL);
    FUNC7(file != NULL, "got %p\n", *file);

    nameW[0] = 0;
    ret = FUNC8(nameW, pathW, tmpW, longW);
    FUNC7(ret, "got %d\n", ret);
    FUNC6(buffW, pathW);
    FUNC4(buffW, long2W);
    FUNC7(!FUNC5(nameW, buffW), "got %s, expected %s\n", FUNC10(nameW), FUNC10(buffW));

    FUNC1(file);

    /* Using long only */
    nameW[0] = 0;
    ret = FUNC8(nameW, pathW, NULL, longW);
    FUNC7(ret, "got %d\n", ret);
    FUNC6(buffW, pathW);
    FUNC4(buffW, longW);
    FUNC7(!FUNC5(nameW, buffW), "got %s, expected %s\n", FUNC10(nameW), FUNC10(buffW));
}