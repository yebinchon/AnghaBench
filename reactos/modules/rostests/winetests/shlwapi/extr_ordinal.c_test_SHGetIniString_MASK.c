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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int FUNC7 (char const*,char const*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    DWORD ret;
    WCHAR out[64] = {0};

    static const WCHAR TestAppW[] = {'T','e','s','t','A','p','p',0};
    static const WCHAR AKeyW[] = {'A','K','e','y',0};
    static const WCHAR AnotherKeyW[] = {'A','n','o','t','h','e','r','K','e','y',0};
    static const WCHAR JunkKeyW[] = {'J','u','n','k','K','e','y',0};
    static const WCHAR testpathW[] = {'C',':','\\','t','e','s','t','.','i','n','i',0};
    WCHAR pathW[MAX_PATH];

    FUNC5(pathW, testpathW);

    if (!FUNC10(pathW))
        return;

    if(0){
        /* these crash on Windows */
        FUNC7(NULL, NULL, NULL, 0, NULL);
        FUNC7(NULL, AKeyW, out, FUNC0(out), pathW);
        FUNC7(TestAppW, AKeyW, NULL, FUNC0(out), pathW);
    }

    ret = FUNC7(TestAppW, AKeyW, out, 0, pathW);
    FUNC6(ret == 0, "SHGetIniStringW should have given 0, instead: %d\n", ret);

    /* valid arguments */
    out[0] = 0;
    FUNC3(0xdeadbeef);
    ret = FUNC7(TestAppW, NULL, out, FUNC0(out), pathW);
    FUNC6(ret == 4, "SHGetIniStringW should have given 4, instead: %d\n", ret);
    FUNC6(!FUNC4(out, AKeyW), "Expected %s, got: %s, %d\n",
                FUNC9(AKeyW), FUNC9(out), FUNC2());

    ret = FUNC7(TestAppW, AKeyW, out, FUNC0(out), pathW);
    FUNC6(ret == 1, "SHGetIniStringW should have given 1, instead: %d\n", ret);
    FUNC6(!FUNC8(out, "1"), "Expected L\"1\", got: %s\n", FUNC9(out));

    ret = FUNC7(TestAppW, AnotherKeyW, out, FUNC0(out), pathW);
    FUNC6(ret == 4, "SHGetIniStringW should have given 4, instead: %d\n", ret);
    FUNC6(!FUNC8(out, "asdf"), "Expected L\"asdf\", got: %s\n", FUNC9(out));

    out[0] = 1;
    ret = FUNC7(TestAppW, JunkKeyW, out, FUNC0(out), pathW);
    FUNC6(ret == 0, "SHGetIniStringW should have given 0, instead: %d\n", ret);
    FUNC6(*out == 0, "Expected L\"\", got: %s\n", FUNC9(out));

    FUNC1(pathW);
}