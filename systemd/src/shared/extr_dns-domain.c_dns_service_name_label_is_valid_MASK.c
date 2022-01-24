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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC3 (char const*,size_t) ; 

__attribute__((used)) static bool FUNC4(const char *label, size_t n) {
        char *s;

        FUNC0(label);

        if (FUNC2(label, 0, n))
                return false;

        s = FUNC3(label, n);
        return FUNC1(s);
}