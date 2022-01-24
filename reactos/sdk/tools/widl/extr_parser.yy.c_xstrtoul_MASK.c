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
 scalar_t__ ERANGE ; 
 unsigned long ULONG_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static unsigned int FUNC2(const char *nptr, char **endptr, int base)
{
    unsigned long val;

    errno = 0;
    val = FUNC1(nptr, endptr, base);
    if ((val == ULONG_MAX && errno == ERANGE) || ((unsigned int)val != val))
        FUNC0("integer constant %s is too large\n", nptr);
    return val;
}