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
typedef  scalar_t__ cmsUInt8Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  Inw ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC5(cmsHTRANSFORM xform, cmsInt32Number nChan)
{
    cmsInt32Number n2, i, j;
    cmsUInt8Number Inw[cmsMAXCHANNELS], Outw[cmsMAXCHANNELS];

    n2=0;

    for (j=0; j < 0xFF; j++) {

        FUNC4(Inw, j, sizeof(Inw));
        FUNC3(FUNC0(), xform, Inw, Outw, 1);

        for (i=0; i < nChan; i++) {

           cmsInt32Number dif = FUNC2(Outw[i] - j);
           if (dif > n2) n2 = dif;

        }
    }

   // We allow 2 contone of difference on 8 bits
    if (n2 > 2) {

        FUNC1("Differences too big (%x)", n2);
        return 0;
    }

    return 1;
}