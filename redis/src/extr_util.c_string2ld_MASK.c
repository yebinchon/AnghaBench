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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 long double HUGE_VAL ; 
 int MAX_LONG_DOUBLE_CHARS ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (long double) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 long double FUNC3 (char*,char**) ; 

int FUNC4(const char *s, size_t slen, long double *dp) {
    char buf[MAX_LONG_DOUBLE_CHARS];
    long double value;
    char *eptr;

    if (slen >= sizeof(buf)) return 0;
    FUNC2(buf,s,slen);
    buf[slen] = '\0';

    errno = 0;
    value = FUNC3(buf, &eptr);
    if (FUNC1(buf[0]) || eptr[0] != '\0' ||
        (errno == ERANGE &&
            (value == HUGE_VAL || value == -HUGE_VAL || value == 0)) ||
        errno == EINVAL ||
        FUNC0(value))
        return 0;

    if (dp) *dp = value;
    return 1;
}