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
 int /*<<< orphan*/  DNS_LABEL_LDH ; 
 int /*<<< orphan*/  DNS_LABEL_NO_ESCAPES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const**,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,size_t,int,int) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int FUNC4 (char*,char const*) ; 

__attribute__((used)) static void FUNC5(const char *what, const char *expect, size_t buffer_sz, int ret, int ret_ldh) {
        char buffer[buffer_sz];
        int r;
        const char *w = what;

        FUNC2("%s, %s, %zu, →%d/%d", what, expect, buffer_sz, ret, ret_ldh);

        r = FUNC1(&w, buffer, buffer_sz, 0);
        FUNC0(r == ret);
        if (r >= 0)
                FUNC0(FUNC4(buffer, expect));

        w = what;
        r = FUNC1(&w, buffer, buffer_sz, DNS_LABEL_LDH);
        FUNC0(r == ret_ldh);
        if (r >= 0)
                FUNC0(FUNC4(buffer, expect));

        w = what;
        r = FUNC1(&w, buffer, buffer_sz, DNS_LABEL_NO_ESCAPES);
        const int ret_noe = FUNC3(what, '\\') ? -EINVAL : ret;
        FUNC0(r == ret_noe);
        if (r >= 0)
                FUNC0(FUNC4(buffer, expect));
}