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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char locale_decimal_point ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,double) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3()
{
    char buf[8];

    FUNC2(buf, sizeof(buf), "%g", 0.5);

    /* Failing this test might imply the platform has a buggy dtoa
     * implementation or wide characters */
    if (buf[0] != '0' || buf[2] != '5' || buf[3] != 0) {
        FUNC1(stderr, "Error: wide characters found or printf() bug.");
        FUNC0();
    }

    locale_decimal_point = buf[1];
}