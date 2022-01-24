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
struct TYPE_4__ {float a; float b; float c; float d; } ;
typedef  TYPE_1__ fz_matrix ;

/* Variables and functions */
 scalar_t__ FLT_EPSILON ; 
 float FZ_PI ; 
 float FUNC0 (float) ; 
 scalar_t__ FUNC1 (float) ; 
 float FUNC2 (float) ; 

fz_matrix
FUNC3(fz_matrix m, float theta)
{
	while (theta < 0)
		theta += 360;
	while (theta >= 360)
		theta -= 360;

	if (FUNC1(0 - theta) < FLT_EPSILON)
	{
		/* Nothing to do */
	}
	else if (FUNC1(90.0f - theta) < FLT_EPSILON)
	{
		float a = m.a;
		float b = m.b;
		m.a = m.c;
		m.b = m.d;
		m.c = -a;
		m.d = -b;
	}
	else if (FUNC1(180.0f - theta) < FLT_EPSILON)
	{
		m.a = -m.a;
		m.b = -m.b;
		m.c = -m.c;
		m.d = -m.d;
	}
	else if (FUNC1(270.0f - theta) < FLT_EPSILON)
	{
		float a = m.a;
		float b = m.b;
		m.a = -m.c;
		m.b = -m.d;
		m.c = a;
		m.d = b;
	}
	else
	{
		float s = FUNC2(theta * FZ_PI / 180);
		float c = FUNC0(theta * FZ_PI / 180);
		float a = m.a;
		float b = m.b;
		m.a = c * a + s * m.c;
		m.b = c * b + s * m.d;
		m.c =-s * a + c * m.c;
		m.d =-s * b + c * m.d;
	}

	return m;
}