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
 float FUNC0 (float) ; 

__attribute__((used)) static void FUNC1( float *vect_x, float *vect_y )
{
    float norm = FUNC0( *vect_x * *vect_x + *vect_y * *vect_y );
    if( *vect_x != 0 || *vect_y != 0 )
    {
        *vect_x /= norm;
        *vect_y /= norm;
    }
}