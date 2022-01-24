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
struct _complex {int x; int y; } ;

/* Variables and functions */
 double FUNC0 (int) ; 

double FUNC1( struct _complex z )
{
	return FUNC0( z.x*z.x + z.y*z.y );
//	return hypot(z.x,z.y);
}