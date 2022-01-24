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
struct ether_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,int,char*,int,char*,int /*<<< orphan*/ ,char const*,struct ether_addr**,int /*<<< orphan*/ *) ; 
 struct ether_addr* FUNC2 (struct ether_addr const*,struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ether_addr*) ; 

__attribute__((used)) static void FUNC4(const char *rvalue, int ret, const struct ether_addr* expected) {
        struct ether_addr *actual = NULL;
        int r;

        r = FUNC1("network", "filename", 1, "section", 1, "lvalue", 0, rvalue, &actual, NULL);
        FUNC0(ret == r);
        if (expected) {
                FUNC0(actual);
                FUNC0(FUNC2(expected, actual));
        } else
                FUNC0(actual == NULL);

        FUNC3(actual);
}