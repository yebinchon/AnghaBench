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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  DIGITS ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (char const*,unsigned int*) ; 
 char* FUNC4 (char const*,size_t) ; 
 size_t FUNC5 (char const*,int /*<<< orphan*/ ) ; 

int FUNC6(const char *s, dev_t *ret) {
        const char *major;
        unsigned x, y;
        size_t n;
        int r;

        n = FUNC5(s, DIGITS);
        if (n == 0)
                return -EINVAL;
        if (s[n] != ':')
                return -EINVAL;

        major = FUNC4(s, n);
        r = FUNC3(major, &x);
        if (r < 0)
                return r;

        r = FUNC3(s + n + 1, &y);
        if (r < 0)
                return r;

        if (!FUNC0(x) || !FUNC1(y))
                return -ERANGE;

        *ret = FUNC2(x, y);
        return 0;
}