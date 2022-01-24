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
typedef  int /*<<< orphan*/  utf16_test ;
typedef  int /*<<< orphan*/  buf ;
typedef  unsigned char WCHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 char* FUNC12 (unsigned char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const char file_name[] = "fprintf.tst";
    static const WCHAR utf16_test[] = {'u','n','i','c','o','d','e','\n',0};

    FILE *fp = FUNC2(file_name, "wb");
    char buf[1024];
    int ret;

    ret = FUNC3(fp, "simple test\n");
    FUNC9(ret == 12, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 12, "ftell returned %d\n", ret);

    ret = FUNC3(fp, "contains%cnull\n", '\0');
    FUNC9(ret == 14, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 26, "ftell returned %d\n", ret);

    ret = FUNC6(fp, utf16_test);
    FUNC9(ret == 8, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 42, "ftell returned %d\n", ret);

    FUNC0(fp);

    fp = FUNC2(file_name, "rb");
    ret = FUNC4(fp, "%[^\n] ", buf);
    FUNC9(ret == 1, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 12, "ftell returned %d\n", ret);
    FUNC9(!FUNC10(buf, "simple test"), "buf = %s\n", buf);

    FUNC1(buf, sizeof(buf), fp);
    ret = FUNC5(fp);
    FUNC9(ret == 26, "ret = %d\n", ret);
    FUNC9(!FUNC7(buf, "contains\0null\n", 14), "buf = %s\n", buf);

    FUNC8(buf, 0, sizeof(buf));
    FUNC1(buf, sizeof(buf), fp);
    ret = FUNC5(fp);
    FUNC9(ret == 41, "ret =  %d\n", ret);
    FUNC9(!FUNC7(buf, utf16_test, sizeof(utf16_test)),
            "buf = %s\n", FUNC12((WCHAR*)buf));

    FUNC0(fp);

    fp = FUNC2(file_name, "wt");

    ret = FUNC3(fp, "simple test\n");
    FUNC9(ret == 12, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 13, "ftell returned %d\n", ret);

    ret = FUNC3(fp, "contains%cnull\n", '\0');
    FUNC9(ret == 14, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 28, "ftell returned %d\n", ret);

    ret = FUNC6(fp, utf16_test);
    FUNC9(ret == 8, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 37, "ftell returned %d\n", ret);

    FUNC0(fp);

    fp = FUNC2(file_name, "rb");
    ret = FUNC4(fp, "%[^\n] ", buf);
    FUNC9(ret == 1, "ret = %d\n", ret);
    ret = FUNC5(fp);
    FUNC9(ret == 13, "ftell returned %d\n", ret);
    FUNC9(!FUNC10(buf, "simple test\r"), "buf = %s\n", buf);

    FUNC1(buf, sizeof(buf), fp);
    ret = FUNC5(fp);
    FUNC9(ret == 28, "ret = %d\n", ret);
    FUNC9(!FUNC7(buf, "contains\0null\r\n", 15), "buf = %s\n", buf);

    FUNC1(buf, sizeof(buf), fp);
    ret = FUNC5(fp);
    FUNC9(ret == 37, "ret =  %d\n", ret);
    FUNC9(!FUNC10(buf, "unicode\r\n"), "buf = %s\n", buf);

    FUNC0(fp);
    FUNC11(file_name);
}