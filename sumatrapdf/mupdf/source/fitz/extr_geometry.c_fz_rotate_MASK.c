#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float a; float b; float c; float d; scalar_t__ f; scalar_t__ e; } ;
typedef  TYPE_1__ fz_matrix ;

/* Variables and functions */
 scalar_t__ FLT_EPSILON ; 
 float FZ_PI ; 
 float FUNC0 (float) ; 
 scalar_t__ FUNC1 (float) ; 
 float FUNC2 (float) ; 

fz_matrix
FUNC3(float theta)
{
	fz_matrix m;
	float s;
	float c;

	while (theta < 0)
		theta += 360;
	while (theta >= 360)
		theta -= 360;

	if (FUNC1(0 - theta) < FLT_EPSILON)
	{
		s = 0;
		c = 1;
	}
	else if (FUNC1(90.0f - theta) < FLT_EPSILON)
	{
		s = 1;
		c = 0;
	}
	else if (FUNC1(180.0f - theta) < FLT_EPSILON)
	{
		s = 0;
		c = -1;
	}
	else if (FUNC1(270.0f - theta) < FLT_EPSILON)
	{
		s = -1;
		c = 0;
	}
	else
	{
		s = FUNC2(theta * FZ_PI / 180);
		c = FUNC0(theta * FZ_PI / 180);
	}

	m.a = c; m.b = s;
	m.c = -s; m.d = c;
	m.e = 0; m.f = 0;
	return m;
}