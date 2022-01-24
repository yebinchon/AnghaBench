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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int8_numeric ; 
 int /*<<< orphan*/  numeric_add ; 
 int /*<<< orphan*/  numeric_div ; 
 int /*<<< orphan*/  numeric_mul ; 
 int /*<<< orphan*/  numeric_sub ; 

__attribute__((used)) static Datum
FUNC3(int64 x_i, int64 x0_i, int64 x1_i, Datum y0, Datum y1)
{
	Datum x0 = FUNC0(int8_numeric, FUNC2(x0_i));
	Datum x1 = FUNC0(int8_numeric, FUNC2(x1_i));
	Datum x = FUNC0(int8_numeric, FUNC2(x_i));

	Datum x1_sub_x = FUNC1(numeric_sub, x1, x);
	Datum x_sub_x0 = FUNC1(numeric_sub, x, x0);
	Datum y0_mul_x1_sub_x = FUNC1(numeric_mul, y0, x1_sub_x);
	Datum y1_mul_x_sub_x0 = FUNC1(numeric_mul, y1, x_sub_x0);

	Datum numerator = FUNC1(numeric_add, y0_mul_x1_sub_x, y1_mul_x_sub_x0);
	Datum denominator = FUNC1(numeric_sub, x1, x0);

	return FUNC1(numeric_div, numerator, denominator);
}