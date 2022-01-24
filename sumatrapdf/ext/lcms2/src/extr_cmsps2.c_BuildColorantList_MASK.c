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
typedef  size_t cmsUInt32Number ;
typedef  double cmsUInt16Number ;

/* Variables and functions */
 size_t cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static
void FUNC2(char *Colorant, cmsUInt32Number nColorant, cmsUInt16Number Out[])
{
    char Buff[32];
    cmsUInt32Number j;

    Colorant[0] = 0;
    if (nColorant > cmsMAXCHANNELS)
        nColorant = cmsMAXCHANNELS;

    for (j = 0; j < nColorant; j++) {

        FUNC0(Buff, 31, "%.3f", Out[j] / 65535.0);
        Buff[31] = 0;
        FUNC1(Colorant, Buff);
        if (j < nColorant - 1)
            FUNC1(Colorant, " ");

    }
}