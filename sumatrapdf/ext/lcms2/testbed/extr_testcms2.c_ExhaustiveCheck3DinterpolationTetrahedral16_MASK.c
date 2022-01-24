#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt16Number ;
struct TYPE_6__ {int /*<<< orphan*/  (* Lerp16 ) (int /*<<< orphan*/ ,int*,int*,TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ Interpolation; } ;
typedef  TYPE_2__ cmsInterpParams ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_LERP_FLAGS_16BITS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*,TYPE_2__*) ; 

__attribute__((used)) static
cmsInt32Number FUNC5(void)
{
    cmsInterpParams* p;
    cmsInt32Number r, g, b;
    cmsUInt16Number In[3], Out[3];
    cmsUInt16Number Table[] = {

        0,    0,   0,
        0,    0,   0xffff,

        0,    0xffff,    0,
        0,    0xffff,    0xffff,

        0xffff,    0,    0,
        0xffff,    0,    0xffff,

        0xffff,    0xffff,   0,
        0xffff,    0xffff,   0xffff
    };

    p = FUNC2(FUNC0(), 2, 3, 3, Table, CMS_LERP_FLAGS_16BITS);

    for (r=0; r < 0xff; r++)
        for (g=0; g < 0xff; g++)
            for (b=0; b < 0xff; b++)
        {
            In[0] = (cmsUInt16Number) r ;
            In[1] = (cmsUInt16Number) g ;
            In[2] = (cmsUInt16Number) b ;


        p ->Interpolation.Lerp16(FUNC0(), In, Out, p);

       if (!FUNC1("Channel 1", Out[0], In[0])) goto Error;
       if (!FUNC1("Channel 2", Out[1], In[1])) goto Error;
       if (!FUNC1("Channel 3", Out[2], In[2])) goto Error;
     }

    FUNC3(FUNC0(), p);
    return 1;

Error:
    FUNC3(FUNC0(), p);
    return 0;
}