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
struct dns_type_name {int id; } ;

/* Variables and functions */
 unsigned int UINT16_MAX ; 
 int _DNS_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct dns_type_name* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,unsigned int*) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *s) {
        const struct dns_type_name *sc;

        FUNC0(s);

        sc = FUNC1(s, FUNC4(s));
        if (sc)
                return sc->id;

        s = FUNC3(s, "TYPE");
        if (s) {
                unsigned x;

                if (FUNC2(s, &x) >= 0 &&
                    x <= UINT16_MAX)
                        return (int) x;
        }

        return _DNS_TYPE_INVALID;
}