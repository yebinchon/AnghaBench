#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ fz_point ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 

__attribute__((used)) static fz_point
FUNC2(fz_point p, float r, float theta)
{
	p.x = p.x + FUNC0(theta) * r;
	p.y = p.y + FUNC1(theta) * r;
	return p;
}