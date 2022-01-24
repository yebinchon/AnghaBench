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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  EINVAL ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int FUNC4 (int,void const*,char**) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char,void const**,size_t*) ; 

__attribute__((used)) static int FUNC11(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        char **p = (char **) userdata;
        const void *d;
        int family, r;
        size_t sz;

        FUNC3(p);

        r = FUNC7(m, 'r', "iay");
        if (r < 0)
                return r;

        r = FUNC9(m, "i", &family);
        if (r < 0)
                return r;

        r = FUNC10(m, 'y', &d, &sz);
        if (r < 0)
                return r;

        r = FUNC8(m);
        if (r < 0)
                return r;

        if (sz == 0 && family == AF_UNSPEC) {
                *p = FUNC6(*p);
                return 0;
        }

        if (!FUNC1(family, AF_INET, AF_INET6))
                return FUNC5(FUNC2(EINVAL),
                                       "Unknown address family %i", family);

        if (sz != FUNC0(family))
                return FUNC5(FUNC2(EINVAL),
                                       "Invalid address size");

        r = FUNC4(family, d, p);
        if (r < 0)
                return r;

        return 0;
}