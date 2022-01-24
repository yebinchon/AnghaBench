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
typedef  char** sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char***) ; 
 int FUNC1 (char***,char,char*) ; 
 int FUNC2 (char***) ; 
 int FUNC3 (char***,char,char const**) ; 
 int FUNC4 (char***,char const*) ; 

int FUNC5(sd_bus_message *m, char ***l) {
        const char *s;
        int r;

        FUNC0(m);
        FUNC0(l);

        r = FUNC1(m, 'a', "s");
        if (r <= 0)
                return r;

        while ((r = FUNC3(m, 's', &s)) > 0) {
                r = FUNC4(l, s);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return r;

        r = FUNC2(m);
        if (r < 0)
                return r;

        return 1;
}