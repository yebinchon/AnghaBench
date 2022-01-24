#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  scalar_t__ cmsUInt16Number ;
struct TYPE_9__ {scalar_t__* Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
struct TYPE_10__ {int (* Read ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int,int) ;} ;
typedef  TYPE_2__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
typedef  int /*<<< orphan*/  Tables ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static
cmsBool  FUNC9(cmsContext ContextID, cmsIOHANDLER* io, cmsPipeline* lut, cmsUInt32Number nChannels)
{
    cmsUInt8Number* Temp = NULL;
    cmsUInt32Number i, j;
    cmsToneCurve* Tables[cmsMAXCHANNELS];

    if (nChannels > cmsMAXCHANNELS) return FALSE;
    if (nChannels <= 0) return FALSE;

    FUNC7(Tables, 0, sizeof(Tables));

    Temp = (cmsUInt8Number*) FUNC2(ContextID, 256);
    if (Temp == NULL) return FALSE;

    for (i=0; i < nChannels; i++) {
        Tables[i] = FUNC3(ContextID, 256, NULL);
        if (Tables[i] == NULL) goto Error;
    }

    for (i=0; i < nChannels; i++) {

        if (io ->Read(ContextID, io, Temp, 256, 1) != 1) goto Error;

        for (j=0; j < 256; j++)
            Tables[i]->Table16[j] = (cmsUInt16Number) FUNC0(Temp[j]);
    }

    FUNC1(ContextID, Temp);
    Temp = NULL;

    if (!FUNC5(ContextID, lut, cmsAT_END, FUNC6(ContextID, nChannels, Tables)))
        goto Error;

    for (i=0; i < nChannels; i++)
        FUNC4(ContextID, Tables[i]);

    return TRUE;

Error:
    for (i=0; i < nChannels; i++) {
        if (Tables[i]) FUNC4(ContextID, Tables[i]);
    }

    if (Temp) FUNC1(ContextID, Temp);
    return FALSE;
}