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
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char const*,size_t) ; 

__attribute__((used)) static int FUNC3(Set *fields, const char *name, size_t n) {
        char *s = NULL;

        if (!fields)
                return 1;

        s = FUNC2(name, n);
        if (!s)
                return FUNC0();

        return FUNC1(fields, s) ? 1 : 0;
}