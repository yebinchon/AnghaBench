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
 float FUNC0 (float,float,float) ; 

void FUNC1(float H, float L, float S,
              float* R, float* G, float* B)
{
    float M1, M2;
    if(S <= 0.5) M2 = S * (1 + L);
        else M2 = S * (1 - L) + L;
    M1 = 2 * S - M2;
    if (L == 0.0)
    {
        *R = S;
        *G = S;
        *B = S;
    } else {
        *R = FUNC0(H + 120.0, M1, M2);
        *G = FUNC0(H        , M1, M2);
        *B = FUNC0(H - 120.0, M1, M2);
    }
}