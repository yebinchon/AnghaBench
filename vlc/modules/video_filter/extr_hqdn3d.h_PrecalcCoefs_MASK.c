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
 int FUNC0 (int) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double,double) ; 

__attribute__((used)) static void FUNC3(int *Ct, double Dist25)
{
    double Gamma, Simil, C;

    Gamma = FUNC1(0.25) / FUNC1(1.0 - Dist25/255.0 - 0.00001);

    for (int i = -255*16; i <= 255*16; i++)
    {
        Simil = 1.0 - FUNC0(i) / (16*255.0);
        C = FUNC2(Simil, Gamma) * 65536.0 * (double)i / 16.0;
        Ct[16*256+i] = (C<0) ? (C-0.5) : (C+0.5);
    }

    Ct[0] = (Dist25 != 0);
}