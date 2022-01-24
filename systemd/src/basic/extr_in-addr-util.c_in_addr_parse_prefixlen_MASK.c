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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int ERANGE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int*) ; 

int FUNC3(int family, const char *p, unsigned char *ret) {
        uint8_t u;
        int r;

        if (!FUNC1(family, AF_INET, AF_INET6))
                return -EAFNOSUPPORT;

        r = FUNC2(p, &u);
        if (r < 0)
                return r;

        if (u > FUNC0(family) * 8)
                return -ERANGE;

        *ret = u;
        return 0;
}