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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (char,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ p_fopen_s ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    char temppath[MAX_PATH];
    char tempfile[MAX_PATH];
    FILE *f;
    char buf[1024];
    int ret;

    FUNC1(MAX_PATH, temppath);
    FUNC0(temppath, "", 0, tempfile);

    f = FUNC4(tempfile, "w");
    ret = FUNC5('a', f);
    FUNC8(ret == 'a', "fputwc returned %x, expected 'a'\n", ret);
    ret = FUNC5('\n', f);
    FUNC8(ret == '\n', "fputwc returned %x, expected '\\n'\n", ret);
    FUNC3(f);

    f = FUNC4(tempfile, "rb");
    ret = FUNC6(buf, 1, sizeof(buf), f);
    FUNC8(ret == 3, "fread returned %d, expected 3\n", ret);
    FUNC8(!FUNC7(buf, "a\r\n", 3), "incorrect file data\n");
    FUNC3(f);

    if(p_fopen_s) {
        f = FUNC4(tempfile, "w,ccs=unicode");
        ret = FUNC5('a', f);
        FUNC8(ret == 'a', "fputwc returned %x, expected 'a'\n", ret);
        ret = FUNC5('\n', f);
        FUNC8(ret == '\n', "fputwc returned %x, expected '\\n'\n", ret);
        FUNC3(f);

        f = FUNC4(tempfile, "rb");
        ret = FUNC6(buf, 1, sizeof(buf), f);
        FUNC8(ret == 8, "fread returned %d, expected 8\n", ret);
        FUNC8(!FUNC7(buf, "\xff\xfe\x61\x00\r\x00\n\x00", 8), "incorrect file data\n");
        FUNC3(f);

        f = FUNC4(tempfile, "w,ccs=utf-8");
        ret = FUNC5('a', f);
        FUNC8(ret == 'a', "fputwc returned %x, expected 'a'\n", ret);
        ret = FUNC5('\n', f);
        FUNC8(ret == '\n', "fputwc returned %x, expected '\\n'\n", ret);
        FUNC3(f);

        f = FUNC4(tempfile, "rb");
        ret = FUNC6(buf, 1, sizeof(buf), f);
        FUNC8(ret == 6, "fread returned %d, expected 6\n", ret);
        FUNC8(!FUNC7(buf, "\xef\xbb\xbf\x61\r\n", 6), "incorrect file data\n");
        FUNC3(f);
    }else {
        FUNC9("fputwc tests on unicode files\n");
    }

    FUNC2(tempfile);
}