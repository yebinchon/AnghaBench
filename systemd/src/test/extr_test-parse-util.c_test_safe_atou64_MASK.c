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
typedef  int uint64_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int*) ; 

__attribute__((used)) static void FUNC2(void) {
        int r;
        uint64_t l;

        r = FUNC1("12345", &l);
        FUNC0(r == 0);
        FUNC0(l == 12345);

        r = FUNC1("  12345", &l);
        FUNC0(r == 0);
        FUNC0(l == 12345);

        r = FUNC1("18446744073709551617", &l);
        FUNC0(r == -ERANGE);

        r = FUNC1("-1", &l);
        FUNC0(r == -ERANGE);

        r = FUNC1("  -1", &l);
        FUNC0(r == -ERANGE);

        r = FUNC1("junk", &l);
        FUNC0(r == -EINVAL);

        r = FUNC1("123x", &l);
        FUNC0(r == -EINVAL);

        r = FUNC1("12.3", &l);
        FUNC0(r == -EINVAL);

        r = FUNC1("", &l);
        FUNC0(r == -EINVAL);
}