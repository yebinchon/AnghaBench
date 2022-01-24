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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(int af, const char *ifname, const char *property, bool value) {
        return FUNC1(af, ifname, property, FUNC0(value));
}