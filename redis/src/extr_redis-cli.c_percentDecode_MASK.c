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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 char FUNC0 (char,char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 char FUNC6 (char const) ; 

__attribute__((used)) static sds FUNC7(const char *pe, size_t len) {
    const char *end = pe + len;
    sds ret = FUNC5();
    const char *curr = pe;

    while (curr < end) {
        if (*curr == '%') {
            if ((end - curr) < 2) {
                FUNC2(stderr, "Incomplete URI encoding\n");
                FUNC1(1);
            }

            char h = FUNC6(*(++curr));
            char l = FUNC6(*(++curr));
            if (!FUNC3(h) || !FUNC3(l)) {
                FUNC2(stderr, "Illegal character in URI encoding\n");
                FUNC1(1);
            }
            char c = FUNC0(h, l);
            ret = FUNC4(ret, &c, 1);
            curr++;
        } else {
            ret = FUNC4(ret, curr++, 1);
        }
    }

    return ret;
}