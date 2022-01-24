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
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,long long*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 unsigned long long FUNC2 (char const*,char**,int) ; 

int FUNC3(const char *s, unsigned long long *value) {
    long long ll;
    if (FUNC0(s,FUNC1(s),&ll)) {
        if (ll < 0) return 0; /* Negative values are out of range. */
        *value = ll;
        return 1;
    }
    errno = 0;
    char *endptr = NULL;
    *value = FUNC2(s,&endptr,10);
    if (errno == EINVAL || errno == ERANGE || !(*s != '\0' && *endptr == '\0'))
        return 0; /* strtoull() failed. */
    return 1; /* Conversion done! */
}