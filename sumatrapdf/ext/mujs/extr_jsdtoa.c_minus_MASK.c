#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ e; scalar_t__ f; } ;
typedef  TYPE_1__ diy_fp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static diy_fp_t FUNC1(diy_fp_t x, diy_fp_t y)
{
	diy_fp_t r;
	FUNC0(x.e == y.e);
	FUNC0(x.f >= y.f);
	r.f = x.f - y.f;
	r.e = x.e;
	return r;
}