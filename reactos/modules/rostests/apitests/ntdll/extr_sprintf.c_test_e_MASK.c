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
 double INFINITY ; 
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,double) ; 

void
FUNC2()
{
    char buffer[128];
    long double fpval;

    fpval = 1. / 3.;
    FUNC1(buffer, "%e", fpval);
    FUNC0(buffer, "-3.720662e-103");

    fpval = 1. / 3.;
    FUNC1(buffer, "%e", (double)fpval);
    FUNC0(buffer, "3.333333e-001");

    FUNC1(buffer, "%e", 33.54223);
    FUNC0(buffer, "3.354223e+001");

    FUNC1(buffer, "%e", NAN);
    FUNC0(buffer, "1.#QNAN0e+000");

    FUNC1(buffer, "%.9e", NAN);
    FUNC0(buffer, "1.#QNAN0000e+000");

    FUNC1(buffer, "%e", INFINITY );
    FUNC0(buffer, "1.#INF00e+000");

    FUNC1(buffer, "%e", -INFINITY );
    FUNC0(buffer, "-1.#INF00e+000");


}