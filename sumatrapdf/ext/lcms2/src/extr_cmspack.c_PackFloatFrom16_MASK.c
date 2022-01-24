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
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  scalar_t__ cmsUInt16Number ;
typedef  double cmsFloat64Number ;
typedef  scalar_t__ cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_3__ {int /*<<< orphan*/  OutputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC9(cmsContext ContextID, register _cmsTRANSFORM* info,
                                register cmsUInt16Number wOut[],
                                register cmsUInt8Number* output,
                                register cmsUInt32Number Stride)
{
       cmsUInt32Number nChan      = FUNC2(info->OutputFormat);
       cmsUInt32Number DoSwap     = FUNC3(info->OutputFormat);
       cmsUInt32Number Reverse    = FUNC5(info->OutputFormat);
       cmsUInt32Number Extra      = FUNC4(info->OutputFormat);
       cmsUInt32Number SwapFirst  = FUNC7(info->OutputFormat);
       cmsUInt32Number Planar     = FUNC6(info->OutputFormat);
       cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
       cmsFloat64Number maximum = FUNC0(info->OutputFormat) ? 655.35 : 65535.0;
       cmsFloat64Number v = 0;
       cmsFloat32Number* swap1 = (cmsFloat32Number*)output;
       cmsUInt32Number i, start = 0;

       Stride /= FUNC1(info->OutputFormat);

       if (ExtraFirst)
              start = Extra;

       for (i = 0; i < nChan; i++) {

              cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

              v = (cmsFloat64Number)wOut[index] / maximum;

              if (Reverse)
                     v = maximum - v;

              if (Planar)
                     ((cmsFloat32Number*)output)[(i + start) * Stride] = (cmsFloat32Number)v;
              else
                     ((cmsFloat32Number*)output)[i + start] = (cmsFloat32Number)v;
       }


       if (Extra == 0 && SwapFirst) {

              FUNC8(swap1 + 1, swap1, (nChan - 1)* sizeof(cmsFloat32Number));
              *swap1 = (cmsFloat32Number)v;
       }

       if (FUNC6(info->OutputFormat))
              return output + sizeof(cmsFloat32Number);
       else
              return output + (nChan + Extra) * sizeof(cmsFloat32Number);
}