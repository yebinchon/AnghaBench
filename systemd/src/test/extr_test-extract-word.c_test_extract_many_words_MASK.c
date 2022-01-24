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

/* Variables and functions */
 int /*<<< orphan*/  EXTRACT_UNQUOTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void) {
        const char *p, *original;
        char *a, *b, *c;

        p = original = "foobar waldi piep";
        FUNC0(FUNC1(&p, NULL, 0, &a, &b, &c, NULL) == 3);
        FUNC0(FUNC3(p));
        FUNC0(FUNC4(a, "foobar"));
        FUNC0(FUNC4(b, "waldi"));
        FUNC0(FUNC4(c, "piep"));
        FUNC2(a);
        FUNC2(b);
        FUNC2(c);

        p = original = "'foobar' wa\"ld\"i   ";
        FUNC0(FUNC1(&p, NULL, 0, &a, &b, &c, NULL) == 2);
        FUNC0(FUNC3(p));
        FUNC0(FUNC4(a, "'foobar'"));
        FUNC0(FUNC4(b, "wa\"ld\"i"));
        FUNC0(FUNC4(c, NULL));
        FUNC2(a);
        FUNC2(b);

        p = original = "'foobar' wa\"ld\"i   ";
        FUNC0(FUNC1(&p, NULL, EXTRACT_UNQUOTE, &a, &b, &c, NULL) == 2);
        FUNC0(FUNC3(p));
        FUNC0(FUNC4(a, "foobar"));
        FUNC0(FUNC4(b, "waldi"));
        FUNC0(FUNC4(c, NULL));
        FUNC2(a);
        FUNC2(b);

        p = original = "";
        FUNC0(FUNC1(&p, NULL, 0, &a, &b, &c, NULL) == 0);
        FUNC0(FUNC3(p));
        FUNC0(FUNC4(a, NULL));
        FUNC0(FUNC4(b, NULL));
        FUNC0(FUNC4(c, NULL));

        p = original = "  ";
        FUNC0(FUNC1(&p, NULL, 0, &a, &b, &c, NULL) == 0);
        FUNC0(FUNC3(p));
        FUNC0(FUNC4(a, NULL));
        FUNC0(FUNC4(b, NULL));
        FUNC0(FUNC4(c, NULL));

        p = original = "foobar";
        FUNC0(FUNC1(&p, NULL, 0, NULL) == 0);
        FUNC0(p == original);

        p = original = "foobar waldi";
        FUNC0(FUNC1(&p, NULL, 0, &a, NULL) == 1);
        FUNC0(p == original+7);
        FUNC0(FUNC4(a, "foobar"));
        FUNC2(a);

        p = original = "     foobar    ";
        FUNC0(FUNC1(&p, NULL, 0, &a, NULL) == 1);
        FUNC0(FUNC3(p));
        FUNC0(FUNC4(a, "foobar"));
        FUNC2(a);
}