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
 float FUNC1 (int,float) ; 
 int FUNC2 (float) ; 
 int FUNC3 (float) ; 

__attribute__((used)) static void FUNC4( float f0, float slope, float gainDB, int high,
                               float Fs, float *coeffs )
{
    float A;
    float w0;
    float alpha;
    float b0, b1, b2;
    float a0, a1, a2;

    // Provide sane limits to avoid overflow
    if (f0 > Fs/2*0.95f) f0 = Fs/2*0.95f;
    if (gainDB < -40) gainDB = -40;
    if (gainDB > 40) gainDB = 40;

    A = FUNC1(10, gainDB/40);
    w0 = 2*3.141593f*f0/Fs;
    alpha = FUNC2(w0)/2 * FUNC3( (A + 1/A)*(1/slope - 1) + 2 );

    if (high)
    {
        b0 =    A*( (A+1) + (A-1)*FUNC0(w0) + 2*FUNC3(A)*alpha );
        b1 = -2*A*( (A-1) + (A+1)*FUNC0(w0) );
        b2 =    A*( (A+1) + (A-1)*FUNC0(w0) - 2*FUNC3(A)*alpha );
        a0 =        (A+1) - (A-1)*FUNC0(w0) + 2*FUNC3(A)*alpha;
        a1 =    2*( (A-1) - (A+1)*FUNC0(w0) );
        a2 =        (A+1) - (A-1)*FUNC0(w0) - 2*FUNC3(A)*alpha;
    }
    else
    {
        b0 =    A*( (A+1) - (A-1)*FUNC0(w0) + 2*FUNC3(A)*alpha );
        b1 =  2*A*( (A-1) - (A+1)*FUNC0(w0));
        b2 =    A*( (A+1) - (A-1)*FUNC0(w0) - 2*FUNC3(A)*alpha );
        a0 =        (A+1) + (A-1)*FUNC0(w0) + 2*FUNC3(A)*alpha;
        a1 =   -2*( (A-1) + (A+1)*FUNC0(w0));
        a2 =        (A+1) + (A-1)*FUNC0(w0) - 2*FUNC3(A)*alpha;
    }
    // Store values to coeffs and normalize by 1/a0
    coeffs[0] = b0/a0;
    coeffs[1] = b1/a0;
    coeffs[2] = b2/a0;
    coeffs[3] = a1/a0;
    coeffs[4] = a2/a0;
}