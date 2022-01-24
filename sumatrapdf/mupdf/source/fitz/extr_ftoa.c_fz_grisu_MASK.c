#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int e; int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ diy_fp_t ;

/* Variables and functions */
 int DIY_SIGNIFICAND_SIZE ; 
 TYPE_1__ FUNC0 (int) ; 
 int FUNC1 (TYPE_1__,TYPE_1__,char*,int*) ; 
 int FUNC2 (int) ; 
 TYPE_1__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC4 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (float,TYPE_1__*,TYPE_1__*) ; 

int
FUNC6(float v, char* buffer, int* K)
{
	diy_fp_t w_lower, w_upper, D_upper, D_lower, c_mk, delta;
	int length, mk, alpha = -DIY_SIGNIFICAND_SIZE + 4;

	FUNC5(v, &w_lower, &w_upper);
	mk = FUNC2(alpha - w_upper.e - DIY_SIGNIFICAND_SIZE);
	c_mk = FUNC0(mk);

	D_upper = FUNC4(w_upper, c_mk);
	D_lower = FUNC4(w_lower, c_mk);

	D_upper.f--;
	D_lower.f++;

	delta = FUNC3(D_upper, D_lower);

	*K = -mk;
	length = FUNC1(D_upper, delta, buffer, K);

	buffer[length] = 0;
	return length;
}