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
typedef  float cmsFloat32Number ;
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
 scalar_t__ FUNC8 (float) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC10(cmsContext ContextID, register _cmsTRANSFORM* info,
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
       cmsFloat32Number maximum = FUNC0(info->OutputFormat) ? 655.35F : 65535.0F;
       cmsFloat32Number v = 0;
       cmsUInt16Number* swap1 = (cmsUInt16Number*)output;
       cmsUInt32Number i, start = 0;

       Stride /= FUNC1(info->OutputFormat);

       if (ExtraFirst)
              start = Extra;

       for (i = 0; i < nChan; i++) {

              cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

              v = (cmsFloat32Number)wOut[index] / maximum;

              if (Reverse)
                     v = maximum - v;

              if (Planar)
                     ((cmsUInt16Number*)output)[(i + start) * Stride] = FUNC8(v);
              else
                     ((cmsUInt16Number*)output)[i + start] = FUNC8(v);
       }


       if (Extra == 0 && SwapFirst) {

              FUNC9(swap1 + 1, swap1, (nChan - 1)* sizeof(cmsUInt16Number));
              *swap1 = FUNC8(v);
       }

       if (FUNC6(info->OutputFormat))
              return output + sizeof(cmsUInt16Number);
       else
              return output + (nChan + Extra) * sizeof(cmsUInt16Number);
}