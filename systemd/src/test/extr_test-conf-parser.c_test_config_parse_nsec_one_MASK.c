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
typedef  scalar_t__ nsec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*,int,char*,int,char*,int /*<<< orphan*/ ,char const*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const char *rvalue, nsec_t expected) {
        nsec_t v = 0;

        FUNC0(FUNC1("unit", "filename", 1, "nsection", 1, "lvalue", 0, rvalue, &v, NULL) >= 0);
        FUNC0(expected == v);
}