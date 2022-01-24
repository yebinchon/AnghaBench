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
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 long long FUNC3 (char*,char**,int) ; 

long long FUNC4(const char *p, int *err) {
    const char *u;
    char buf[128];
    long mul; /* unit multiplier */
    long long val;
    unsigned int digits;

    if (err) *err = 0;

    /* Search the first non digit character. */
    u = p;
    if (*u == '-') u++;
    while(*u && FUNC0(*u)) u++;
    if (*u == '\0' || !FUNC2(u,"b")) {
        mul = 1;
    } else if (!FUNC2(u,"k")) {
        mul = 1000;
    } else if (!FUNC2(u,"kb")) {
        mul = 1024;
    } else if (!FUNC2(u,"m")) {
        mul = 1000*1000;
    } else if (!FUNC2(u,"mb")) {
        mul = 1024*1024;
    } else if (!FUNC2(u,"g")) {
        mul = 1000L*1000*1000;
    } else if (!FUNC2(u,"gb")) {
        mul = 1024L*1024*1024;
    } else {
        if (err) *err = 1;
        return 0;
    }

    /* Copy the digits into a buffer, we'll use strtoll() to convert
     * the digit (without the unit) into a number. */
    digits = u-p;
    if (digits >= sizeof(buf)) {
        if (err) *err = 1;
        return 0;
    }
    FUNC1(buf,p,digits);
    buf[digits] = '\0';

    char *endptr;
    errno = 0;
    val = FUNC3(buf,&endptr,10);
    if ((val == 0 && errno == EINVAL) || *endptr != '\0') {
        if (err) *err = 1;
        return 0;
    }
    return val*mul;
}