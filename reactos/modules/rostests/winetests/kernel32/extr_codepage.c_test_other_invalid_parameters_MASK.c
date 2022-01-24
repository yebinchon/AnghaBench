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
typedef  int /*<<< orphan*/  w_string ;
typedef  int /*<<< orphan*/  c_string ;
typedef  char WCHAR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CP_ACP ; 
 int CP_SYMBOL ; 
 int CP_UTF7 ; 
 int CP_UTF8 ; 
 scalar_t__ ERROR_INVALID_FLAGS ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int,int,char*,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int,char*,size_t,char*,size_t,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    char c_string[] = "Hello World";
    size_t c_string_len = sizeof(c_string);
    WCHAR w_string[] = {'H','e','l','l','o',' ','W','o','r','l','d',0};
    size_t w_string_len = sizeof(w_string) / sizeof(WCHAR);
    BOOL used;
    INT len;

    /* Unrecognized flag => ERROR_INVALID_FLAGS */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_ACP, 0x100, w_string, -1, c_string, c_string_len, NULL, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_FLAGS, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC3(CP_ACP, 0x800, w_string, -1, c_string, c_string_len, NULL, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_FLAGS, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC1(CP_ACP, 0x10, c_string, -1, w_string, w_string_len);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_FLAGS, "len=%d error=%x\n", len, FUNC0());


    /* Unrecognized flag and invalid codepage => ERROR_INVALID_PARAMETER */
    FUNC2(0xdeadbeef);
    len = FUNC3(0xdeadbeef, 0x100, w_string, w_string_len, c_string, c_string_len, NULL, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC1(0xdeadbeef, 0x10, c_string, c_string_len, w_string, w_string_len);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());


    /* Unrecognized flag and src is NULL => ERROR_INVALID_PARAMETER */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_ACP, 0x100, NULL, -1, c_string, c_string_len, NULL, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC1(CP_ACP, 0x10, NULL, -1, w_string, w_string_len);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());


    /* srclen=0 => ERROR_INVALID_PARAMETER */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_ACP, 0, w_string, 0, c_string, c_string_len, NULL, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC1(CP_ACP, 0, c_string, 0, w_string, w_string_len);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());


    /* dst=NULL but dstlen not 0 => ERROR_INVALID_PARAMETER */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_ACP, 0, w_string, w_string_len, NULL, c_string_len, NULL, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC1(CP_ACP, 0, c_string, c_string_len, NULL, w_string_len);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());


    /* CP_UTF7, CP_UTF8, or CP_SYMBOL and defchar not NULL => ERROR_INVALID_PARAMETER */
    /* CP_SYMBOL's behavior here is undocumented */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_UTF7, 0, w_string, w_string_len, c_string, c_string_len, c_string, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC3(CP_UTF8, 0, w_string, w_string_len, c_string, c_string_len, c_string, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC3(CP_SYMBOL, 0, w_string, w_string_len, c_string, c_string_len, c_string, NULL);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());


    /* CP_UTF7, CP_UTF8, or CP_SYMBOL and used not NULL => ERROR_INVALID_PARAMETER */
    /* CP_SYMBOL's behavior here is undocumented */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_UTF7, 0, w_string, w_string_len, c_string, c_string_len, NULL, &used);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC3(CP_UTF8, 0, w_string, w_string_len, c_string, c_string_len, NULL, &used);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    len = FUNC3(CP_SYMBOL, 0, w_string, w_string_len, c_string, c_string_len, NULL, &used);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());


    /* CP_UTF7, flags not 0 and used not NULL => ERROR_INVALID_PARAMETER */
    /* (tests precedence of ERROR_INVALID_PARAMETER over ERROR_INVALID_FLAGS) */
    /* The same test with CP_SYMBOL instead of CP_UTF7 gives ERROR_INVALID_FLAGS
       instead except on Windows NT4 */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_UTF7, 1, w_string, w_string_len, c_string, c_string_len, NULL, &used);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());

    /* CP_UTF8, unrecognized flag and used not NULL => ERROR_INVALID_PARAMETER */
    FUNC2(0xdeadbeef);
    len = FUNC3(CP_UTF8, 0x100, w_string, w_string_len, c_string, c_string_len, NULL, &used);
    FUNC4(len == 0 && FUNC0() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, FUNC0());
}