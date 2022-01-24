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
typedef  int /*<<< orphan*/  tests ;
typedef  int /*<<< orphan*/  helloWorldW ;
typedef  int /*<<< orphan*/  helloWorld ;
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;
typedef  char BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_OEMCP ; 
 char FUNC0 (char const*,char*) ; 
 char FUNC1 (char const*,char*,int) ; 
 char FUNC2 (char const*,char*,int) ; 
 char FUNC3 (char const*,char*) ; 
#define  FALSE 129 
 int MB_PRECOMPOSED ; 
 int MB_USEGLYPHCHARS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,char*,int) ; 
 char FUNC5 (char const*,char*) ; 
 char FUNC6 (char const*,char*,int) ; 
 char FUNC7 (char const*,char*,int) ; 
 char FUNC8 (char const*,char*) ; 
#define  TRUE 128 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const WCHAR helloWorldW[] = {'H','e','l','l','o',' ','W','o','r','l','d',0};
    static const WCHAR emptyW[] = {0};
    static const char helloWorld[] = "Hello World";
    static const struct
    {
        BOOL src, dst, ret;
    }
    tests[] =
    {
        { FALSE, FALSE, FALSE },
        { TRUE,  FALSE, FALSE },
        { FALSE, TRUE,  FALSE },
        { TRUE,  TRUE,  TRUE  },
    };
    BOOL ret;
    int i;
    char oem;
    WCHAR uni, expect;

    for (i = 0; i < sizeof(tests)/sizeof(tests[0]); i++)
    {
        const char *expected = tests[i].ret ? helloWorld : "";
        const char *src = tests[i].src ? helloWorld : NULL;
        char buf[64], *dst = tests[i].dst ? buf : NULL;

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC0(src, dst);
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC12(buf, expected), "test %d: got '%s'\n", i, buf);

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC1(src, dst, sizeof(helloWorld));
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC12(buf, expected), "test %d: got '%s'\n", i, buf);

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC5(src, dst);
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC12(buf, expected), "test %d: got '%s'\n", i, buf);

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC6(src, dst, sizeof(helloWorld));
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC12(buf, expected), "test %d: got '%s'\n", i, buf);
    }

    for (i = 0; i < sizeof(tests)/sizeof(tests[0]); i++)
    {
        const char *expected = tests[i].ret ? helloWorld : "";
        const WCHAR *src = tests[i].src ? helloWorldW : NULL;
        char buf[64], *dst = tests[i].dst ? buf : NULL;

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC3(src, dst);
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC12(buf, expected), "test %d: got '%s'\n", i, buf);

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC2(src, dst, sizeof(helloWorldW)/sizeof(WCHAR));
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC12(buf, expected), "test %d: got '%s'\n", i, buf);
    }

    for (i = 0; i < sizeof(tests)/sizeof(tests[0]); i++)
    {
        const WCHAR *expected = tests[i].ret ? helloWorldW : emptyW;
        const char *src = tests[i].src ? helloWorld : NULL;
        WCHAR buf[64], *dst = tests[i].dst ? buf : NULL;

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC8(src, dst);
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC9(buf, expected), "test %d: got '%s'\n", i, FUNC13(buf));

        FUNC10(buf, 0, sizeof(buf));
        ret = FUNC7(src, dst, sizeof(helloWorld));
        FUNC11(ret == tests[i].ret, "test %d: expected %d, got %d\n", i, tests[i].ret, ret);
        FUNC11(!FUNC9(buf, expected), "test %d: got '%s'\n", i, FUNC13(buf));
    }

    for (i = 0; i < 0x100; i++)
    {
        oem = i;
        ret = FUNC7( &oem, &uni, 1 );
        FUNC11( ret, "%02x: returns FALSE\n", i );
        FUNC4( CP_OEMCP, MB_PRECOMPOSED | MB_USEGLYPHCHARS, &oem, 1, &expect, 1 );
        FUNC11( uni == expect, "%02x: got %04x expected %04x\n", i, uni, expect );
    }
}