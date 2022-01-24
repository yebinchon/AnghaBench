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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  scalar_t__ cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int) ; 
 int cmsMAXCHANNELS ; 

__attribute__((used)) static
cmsInt32Number FUNC3(cmsHTRANSFORM xform, cmsInt32Number nChan)
{
    cmsInt32Number i, j;
    cmsFloat32Number In[cmsMAXCHANNELS], Out[cmsMAXCHANNELS];

    for (j=0; j < 0xFFFF; j++) {

        for (i=0; i < nChan; i++) In[i] = (cmsFloat32Number) (j / 65535.0);;

        FUNC2(FUNC0(), xform, In, Out, 1);

        for (i=0; i < nChan; i++) {

           // We allow no difference in floating point
            if (!FUNC1("linear xform cmsFloat32Number", Out[i], (cmsFloat32Number) (j / 65535.0)))
                return 0;
        }
    }

    return 1;
}