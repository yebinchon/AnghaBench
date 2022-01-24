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
typedef  char const* sd_bus_message ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const**,char,char*) ; 
 int FUNC3 (char const**) ; 
 int FUNC4 (char const**,char*,...) ; 
 int FUNC5 (char const**,int) ; 
 int FUNC6 (char const**,char*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *m, int af, const char **canonical) {
        int c = 0, r;

        FUNC0(m);
        FUNC0(canonical);

        r = FUNC2(m, 'a', "(iiay)");
        if (r < 0)
                return r;

        while ((r = FUNC2(m, 'r', "iiay")) > 0) {
                int family, ifindex;

                FUNC1(sizeof(int32_t) == sizeof(int));

                r = FUNC4(m, "ii", &ifindex, &family);
                if (r < 0)
                        return r;

                r = FUNC6(m, "ay");
                if (r < 0)
                        return r;

                r = FUNC3(m);
                if (r < 0)
                        return r;

                if (af != AF_UNSPEC && family != af)
                        continue;

                c++;
        }
        if (r < 0)
                return r;

        r = FUNC3(m);
        if (r < 0)
                return r;

        r = FUNC4(m, "s", canonical);
        if (r < 0)
                return r;

        r = FUNC5(m, true);
        if (r < 0)
                return r;

        return c;
}