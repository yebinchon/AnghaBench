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
typedef  unsigned int sd_bus_message ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int FUNC1 (unsigned int*,char,char*) ; 
 int FUNC2 (unsigned int*) ; 
 int FUNC3 (unsigned int*,char*,int*) ; 
 int FUNC4 (unsigned int*,int) ; 
 int FUNC5 (unsigned int*,char*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, int af, unsigned *ret) {
        unsigned c = 0;
        int r;

        FUNC0(m);
        FUNC0(ret);

        while ((r = FUNC1(m, 'r', "iay")) > 0) {
                int family;

                r = FUNC3(m, "i", &family);
                if (r < 0)
                        return r;

                r = FUNC5(m, "ay");
                if (r < 0)
                        return r;

                r = FUNC2(m);
                if (r < 0)
                        return r;

                if (af != AF_UNSPEC && family != af)
                        continue;

                c++;
        }
        if (r < 0)
                return r;

        r = FUNC4(m, false);
        if (r < 0)
                return r;

        *ret = c;
        return 0;
}