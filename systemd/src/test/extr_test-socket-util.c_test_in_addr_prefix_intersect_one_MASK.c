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
 scalar_t__ FUNC1 (unsigned int,char const*,union in_addr_union*) ; 
 int FUNC2 (unsigned int,union in_addr_union*,unsigned int,union in_addr_union*,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned f, const char *a, unsigned apl, const char *b, unsigned bpl, int result) {
        union in_addr_union ua, ub;

        FUNC0(FUNC1(f, a, &ua) >= 0);
        FUNC0(FUNC1(f, b, &ub) >= 0);

        FUNC0(FUNC2(f, &ua, apl, &ub, bpl) == result);
}