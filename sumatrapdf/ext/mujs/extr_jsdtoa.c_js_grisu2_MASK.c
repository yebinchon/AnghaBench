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
struct TYPE_13__ {int /*<<< orphan*/  f; scalar_t__ e; } ;
typedef  TYPE_1__ diy_fp_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,char*,int*,int*) ; 
 int FUNC2 (scalar_t__,int,int) ; 
 TYPE_1__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC4 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (double,TYPE_1__*,TYPE_1__*) ; 

int
FUNC6(double v, char *buffer, int *K)
{
	int length, mk;
	diy_fp_t w_m, w_p, c_mk, Wp, Wm, delta;
	int q = 64, alpha = -59, gamma = -56;
	FUNC5(v, &w_m, &w_p);
	mk = FUNC2(w_p.e + q, alpha, gamma);
	c_mk = FUNC0(mk);
	Wp = FUNC4(w_p, c_mk);
	Wm = FUNC4(w_m, c_mk);
	Wm.f++; Wp.f--;
	delta = FUNC3(Wp, Wm);
	*K = -mk;
	FUNC1(Wp, delta, buffer, &length, K);
	return length;
}