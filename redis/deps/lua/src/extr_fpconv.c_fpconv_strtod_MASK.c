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
 int FPCONV_G_FMT_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char locale_decimal_point ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 
 double FUNC6 (char const*,char**) ; 
 int FUNC7 (char const*) ; 

double FUNC8(const char *nptr, char **endptr)
{
    char localbuf[FPCONV_G_FMT_BUFSIZE];
    char *buf, *endbuf, *dp;
    int buflen;
    double value;

    /* System strtod() is fine when decimal point is '.' */
    if (locale_decimal_point == '.')
        return FUNC6(nptr, endptr);

    buflen = FUNC7(nptr);
    if (!buflen) {
        /* No valid characters found, standard strtod() return */
        *endptr = (char *)nptr;
        return 0;
    }

    /* Duplicate number into buffer */
    if (buflen >= FPCONV_G_FMT_BUFSIZE) {
        /* Handle unusually large numbers */
        buf = FUNC3(buflen + 1);
        if (!buf) {
            FUNC1(stderr, "Out of memory");
            FUNC0();
        }
    } else {
        /* This is the common case.. */
        buf = localbuf;
    }
    FUNC4(buf, nptr, buflen);
    buf[buflen] = 0;

    /* Update decimal point character if found */
    dp = FUNC5(buf, '.');
    if (dp)
        *dp = locale_decimal_point;

    value = FUNC6(buf, &endbuf);
    *endptr = (char *)&nptr[endbuf - buf];
    if (buflen >= FPCONV_G_FMT_BUFSIZE)
        FUNC2(buf);

    return value;
}