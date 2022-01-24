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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void
FUNC2()
{
    char buffer[128];
    long double fpval;

    fpval = 1. / 3.;
    FUNC1(buffer, "%f", fpval);
    FUNC0(buffer, "-0.000000");

    FUNC1(buffer, "%lf", fpval);
    FUNC0(buffer, "-0.000000");

    FUNC1(buffer, "%llf", fpval);
    FUNC0(buffer, "-0.000000");

    FUNC1(buffer, "%Lf", fpval);
    FUNC0(buffer, "-0.000000");

    FUNC1(buffer, "%f", (double)fpval);
    FUNC0(buffer, "0.333333");

    FUNC1(buffer, "%f", (double)0.125);
    FUNC0(buffer, "0.125000");

    FUNC1(buffer, "%3.7f", (double)fpval);
    FUNC0(buffer, "0.3333333");

    FUNC1(buffer, "%3.30f", (double)fpval);
    FUNC0(buffer, "0.333333333333333310000000000000");

    FUNC1(buffer, "%3.60f", (double)fpval);
    FUNC0(buffer, "0.333333333333333310000000000000000000000000000000000000000000");

    FUNC1(buffer, "%3.80f", (double)fpval);
    FUNC0(buffer, "0.33333333333333331000000000000000000000000000000000000000000000000000000000000000");

    fpval = 1. / 0.;
    FUNC1(buffer, "%f", fpval);
    FUNC0(buffer, "0.000000");

    FUNC1(buffer, "%f", 0x7ff8000000000000ULL); // NAN
    FUNC0(buffer, "1.#QNAN0");

    FUNC1(buffer, "%.9f", 0x7ff8000000000000ULL);
    FUNC0(buffer, "1.#QNAN0000");

    FUNC1(buffer, "%f", 0x7ff0000000000000ULL ); // INFINITY
    FUNC0(buffer, "1.#INF00");

    FUNC1(buffer, "%f", 0xfff0000000000000ULL ); // -INFINITY
    FUNC0(buffer, "-1.#INF00");

    FUNC1(buffer, "%f", 0xfff8000000000000ULL); // broken
    FUNC0(buffer, "-1.#IND00");

}