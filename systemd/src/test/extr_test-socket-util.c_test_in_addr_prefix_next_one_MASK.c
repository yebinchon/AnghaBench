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
typedef  union in_addr_union {int dummy; } in_addr_union ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int,union in_addr_union*,union in_addr_union*) ; 
 scalar_t__ FUNC2 (unsigned int,char const*,union in_addr_union*) ; 
 scalar_t__ FUNC3 (unsigned int,union in_addr_union*,unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned f, const char *before, unsigned pl, const char *after) {
        union in_addr_union ubefore, uafter, t;

        FUNC0(FUNC2(f, before, &ubefore) >= 0);

        t = ubefore;
        FUNC0((FUNC3(f, &t, pl) > 0) == !!after);

        if (after) {
                FUNC0(FUNC2(f, after, &uafter) >= 0);
                FUNC0(FUNC1(f, &t, &uafter) > 0);
        }
}