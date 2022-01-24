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
typedef  int cmsUInt32Number ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static
cmsUInt32Number FUNC7(cmsUInt32Number dwInput, int OutColorSpace, int bps)
{
    int IsPlanar  = FUNC6(dwInput);
    int Channels  = FUNC3(OutColorSpace);
    int IsFlt = (bps == 0) || (bps == 4);

    return (FUNC4(IsFlt)|FUNC2(OutColorSpace)|FUNC5(IsPlanar)|FUNC1(Channels)|FUNC0(bps));
}