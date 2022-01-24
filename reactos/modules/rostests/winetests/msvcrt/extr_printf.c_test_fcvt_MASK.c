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
 char* FUNC0 (double,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    char *str;
    int dec=100, sign=100;

    /* Numbers less than 1.0 with different precisions */
    str = FUNC0(0.0001, 1, &dec, &sign );
    FUNC1( 0 == FUNC2(str,""), "bad return '%s'\n", str);
    FUNC1( -3 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.0001, -10, &dec, &sign );
    FUNC1( 0 == FUNC2(str,""), "bad return '%s'\n", str);
    FUNC1( -3 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.0001, 10, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"1000000"), "bad return '%s'\n", str);
    FUNC1( -3 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    /* Basic sign test */
    str = FUNC0(-111.0001, 5, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"11100010"), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong %d\n", dec);
    FUNC1( 1 == sign, "sign wrong\n");

    str = FUNC0(111.0001, 5, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"11100010"), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong\n");
    FUNC1( 0 == sign, "sign wrong\n");

    /* 0.0 with different precisions */
    str = FUNC0(0.0, 5, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"00000"), "bad return '%s'\n", str);
    FUNC1( 0 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.0, 0, &dec, &sign );
    FUNC1( 0 == FUNC2(str,""), "bad return '%s'\n", str);
    FUNC1( 0 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.0, -1, &dec, &sign );
    FUNC1( 0 == FUNC2(str,""), "bad return '%s'\n", str);
    FUNC1( 0 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    /* Numbers > 1.0 with 0 or -ve precision */
    str = FUNC0(-123.0001, 0, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"123"), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong %d\n", dec);
    FUNC1( 1 == sign, "sign wrong\n");

    str = FUNC0(-123.0001, -1, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"12"), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong %d\n", dec);
    FUNC1( 1 == sign, "sign wrong\n");

    str = FUNC0(-123.0001, -2, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"1"), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong %d\n", dec);
    FUNC1( 1 == sign, "sign wrong\n");

    str = FUNC0(-123.0001, -3, &dec, &sign );
    FUNC1( 0 == FUNC2(str,""), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong %d\n", dec);
    FUNC1( 1 == sign, "sign wrong\n");

    /* Numbers > 1.0, but with rounding at the point of precision */
    str = FUNC0(99.99, 1, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"1000"), "bad return '%s'\n", str);
    FUNC1( 3 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    /* Numbers < 1.0 where rounding occurs at the point of precision */
    str = FUNC0(0.00636, 2, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"1"), "bad return '%s'\n", str);
    FUNC1( -1 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.00636, 3, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"6"), "bad return '%s'\n", str);
    FUNC1( -2 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.09999999996, 2, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"10"), "bad return '%s'\n", str);
    FUNC1( 0 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");

    str = FUNC0(0.6, 0, &dec, &sign );
    FUNC1( 0 == FUNC2(str,"1"), "bad return '%s'\n", str);
    FUNC1( 1 == dec, "dec wrong %d\n", dec);
    FUNC1( 0 == sign, "sign wrong\n");
}