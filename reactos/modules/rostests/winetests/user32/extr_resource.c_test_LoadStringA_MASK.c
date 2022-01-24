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
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,char*,unsigned int const) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int const) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,unsigned int const,...) ; 

__attribute__((used)) static void FUNC9 (void)
{
    HINSTANCE hInst = FUNC1(NULL);
    static const char str[] = "String resource"; /* same in resource.rc */
    char buf[128];
    struct string_test {
        unsigned int bufsiz;
        unsigned int expected;
    };
    struct string_test tests[] = {{sizeof buf, sizeof str - 1},
                                  {sizeof str, sizeof str - 1},
                                  {sizeof str - 1, sizeof str - 2}};
    unsigned int i;
    int ret, ret2;

    FUNC5 (sizeof str < sizeof buf);
    for (i = 0; i < sizeof tests / sizeof tests[0]; i++) {
        const unsigned int bufsiz = tests[i].bufsiz;
        const unsigned int expected = tests[i].expected;
        const int len = FUNC2 (hInst, 0, buf, bufsiz);

        FUNC8 (len == expected, "bufsiz=%d: got %d, expected %d\n",
            bufsiz, len, expected);
        if (len != expected) continue;
        FUNC8 (!FUNC7 (buf, str, len),
            "bufsiz=%d: got '%s', expected '%.*s'\n",
            bufsiz, buf, len, str);
        FUNC8 (buf[len] == 0, "bufsiz=%d: NUL termination missing\n",
            bufsiz);
    }

    ret = FUNC2(hInst, 1, buf, sizeof(buf) );
    FUNC8( ret > 0, "LoadString failed: ret %d err %d\n", ret, FUNC0());
    ret2 = FUNC2( hInst, FUNC3( 1, 0x8000 ), buf, sizeof(buf));
    FUNC8( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, FUNC0());
    ret2 = FUNC2( hInst, FUNC3( 1, 0xffff ), buf, sizeof(buf));
    FUNC8( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, FUNC0());

    ret = FUNC2(hInst, 65534, buf, sizeof(buf) );
    FUNC8( ret > 0, "LoadString failed: ret %d err %d\n", ret, FUNC0());
    ret2 = FUNC2( hInst, FUNC3( 65534, 0x8000 ), buf, sizeof(buf));
    FUNC8( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, FUNC0());
    ret2 = FUNC2( hInst, FUNC3( 65534, 0xffff ), buf, sizeof(buf));
    FUNC8( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, FUNC0());

    ret = FUNC2(hInst, 0, buf, 0);
    FUNC8( ret == -1 || FUNC6(ret == 0),
        "LoadStringA did not return -1 when called with buflen = 0, got %d, err %d\n",
        ret, FUNC0());

    FUNC4(0xdeadbeef);
    buf[0] = 'a';
    ret = FUNC2(hInst, 1, buf, 1);
    FUNC8( !ret, "LoadString returned %d\n", ret);
    FUNC8( buf[0] == 0, "buf[0] = %c (%x)\n", buf[0], buf[0]);
    FUNC8( FUNC0() == 0xdeadbeef, "GetLastError() = %d\n", FUNC0());
}