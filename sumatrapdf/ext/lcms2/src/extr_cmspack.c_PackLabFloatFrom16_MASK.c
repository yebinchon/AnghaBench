#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  scalar_t__ cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_5__ {int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ cmsCIELab ;
struct TYPE_6__ {int /*<<< orphan*/  OutputFormat; } ;
typedef  TYPE_2__ _cmsTRANSFORM ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC4(cmsContext ContextID, register _cmsTRANSFORM* info,
                                    register cmsUInt16Number wOut[],
                                    register cmsUInt8Number* output,
                                    register cmsUInt32Number Stride)
{
    cmsCIELab  Lab;
    FUNC3(ContextID, &Lab, wOut);

    if (FUNC2(info -> OutputFormat)) {

        cmsFloat32Number* Out = (cmsFloat32Number*) output;

        Stride /= FUNC0(info->OutputFormat);

        Out[0]        = (cmsFloat32Number)Lab.L;
        Out[Stride]   = (cmsFloat32Number)Lab.a;
        Out[Stride*2] = (cmsFloat32Number)Lab.b;

        return output + sizeof(cmsFloat32Number);
    }
    else {

       ((cmsFloat32Number*) output)[0] = (cmsFloat32Number) Lab.L;
       ((cmsFloat32Number*) output)[1] = (cmsFloat32Number) Lab.a;
       ((cmsFloat32Number*) output)[2] = (cmsFloat32Number) Lab.b;

        return output + (3 + FUNC1(info ->OutputFormat)) * sizeof(cmsFloat32Number);
    }
}