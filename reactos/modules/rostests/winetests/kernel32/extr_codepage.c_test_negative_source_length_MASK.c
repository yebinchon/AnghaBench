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
typedef  int /*<<< orphan*/  bufW ;
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  foobarW ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    int len;
    char buf[10];
    WCHAR bufW[10];

    /* Test, whether any negative source length works as strlen() + 1 */
    FUNC2( 0xdeadbeef );
    FUNC6(buf,'x',sizeof(buf));
    len = FUNC3(CP_ACP, 0, foobarW, -2002, buf, 10, NULL, NULL);
    FUNC7(len == 7 && FUNC0() == 0xdeadbeef,
       "WideCharToMultiByte(-2002): len=%d error=%u\n", len, FUNC0());
    FUNC7(!FUNC4(buf, "foobar"),
       "WideCharToMultiByte(-2002): expected \"foobar\" got \"%s\"\n", buf);

    FUNC2( 0xdeadbeef );
    FUNC6(bufW,'x',sizeof(bufW));
    len = FUNC1(CP_ACP, 0, "foobar", -2002, bufW, 10);
    FUNC7(len == 7 && !FUNC5(bufW, foobarW) && FUNC0() == 0xdeadbeef,
       "MultiByteToWideChar(-2002): len=%d error=%u\n", len, FUNC0());

    FUNC2(0xdeadbeef);
    FUNC6(bufW, 'x', sizeof(bufW));
    len = FUNC1(CP_ACP, 0, "foobar", -1, bufW, 6);
    FUNC7(len == 0 && FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "MultiByteToWideChar(-1): len=%d error=%u\n", len, FUNC0());
}