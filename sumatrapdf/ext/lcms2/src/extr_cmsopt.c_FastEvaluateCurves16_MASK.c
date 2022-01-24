#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t cmsUInt32Number ;
typedef  size_t cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_2__ {size_t nCurves; size_t** Curves; } ;
typedef  TYPE_1__ Curves16Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC1(cmsContext ContextID, register const cmsUInt16Number In[],
                          register cmsUInt16Number Out[],
                          register const void* D)
{
    Curves16Data* Data = (Curves16Data*) D;
    cmsUInt32Number i;
    FUNC0(ContextID);

    for (i=0; i < Data ->nCurves; i++) {
         Out[i] = Data -> Curves[i][In[i]];
    }
}