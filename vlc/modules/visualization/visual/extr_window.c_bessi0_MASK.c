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
 double FUNC0 (float) ; 
 float FUNC1 (float) ; 
 double FUNC2 (float) ; 

__attribute__((used)) static float FUNC3( float x )
{
    float ax, ans;
    double y; /* Accumulate polynomials in double precision. */
    if( ( ax = FUNC1( x ) ) < 3.75f ) /* Polynomial fit. */
    {
        y = x / 3.75;
        y *= y;
        ans = 1.0 + y * ( 3.5156229 + y * ( 3.0899424 + y * ( 1.2067492
                  + y * ( 0.2659732 + y * ( 0.360768e-1
                  + y * 0.45813e-2 ) ) ) ) );
    }
    else
    {
        y = 3.75 / ax;
        ans = ( FUNC0( ax ) / FUNC2( ax ) ) * ( 0.39894228 + y * ( 0.1328592e-1
            + y * ( 0.225319e-2 + y * ( -0.157565e-2 + y * ( 0.916281e-2
            + y * ( -0.2057706e-1 + y * ( 0.2635537e-1 + y * ( -0.1647633e-1
            + y * 0.392377e-2 ) ) ) ) ) ) ) );
    }
    return ans;
}