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
typedef  char CHAR ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const CHAR test1A[] = "a:\\test.file";
    static const CHAR test2A[] = "file:////b:\\test.file";
    static const CHAR test3A[] = "file:///c:\\test.file";
    static const CHAR test4A[] = "file:\\\\c:\\test.file";
    static const CHAR test5A[] = "\\\\?\\C:\\dir\\file.txt";
    static const WCHAR test1W[] =
        {'a',':','\\',0};
    static const WCHAR test5W[] =
        {'\\','\\','?','\\','C',':','\\','d','i','r','\\','f','i','l','e',0};
    int ret;

    FUNC3(0xdeadbeef);
    ret = FUNC1(NULL);
    FUNC5(ret == -1, "got %d\n", ret);
    FUNC5(FUNC0() == 0xdeadbeef, "got %d\n", FUNC0());

    ret = FUNC1(test1A);
    FUNC5(ret == 0, "got %d\n", ret);
    ret = FUNC2(test1W);
    FUNC5(ret == 0, "got %d\n", ret);
    ret = FUNC1(test2A);
    FUNC5(ret == -1, "got %d\n", ret);
    ret = FUNC1(test3A);
    FUNC5(ret == -1, "got %d\n", ret);
    ret = FUNC1(test4A);
    FUNC5(ret == -1, "got %d\n", ret);

    ret = FUNC1(test5A);
    FUNC5(ret == -1, "got %d\n", ret);
    ret = FUNC2(test5W);
    FUNC5(ret == 2 || FUNC4(ret == -1) /* winxp */, "got = %d\n", ret);
}