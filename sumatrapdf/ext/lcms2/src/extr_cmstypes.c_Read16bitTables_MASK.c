#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
struct TYPE_6__ {int /*<<< orphan*/  Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
typedef  int /*<<< orphan*/  Tables ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsBool  FUNC6(cmsContext ContextID, cmsIOHANDLER* io, cmsPipeline* lut,
                                    cmsUInt32Number nChannels, cmsUInt32Number nEntries)
{
    cmsUInt32Number i;
    cmsToneCurve* Tables[cmsMAXCHANNELS];

    // Maybe an empty table? (this is a lcms extension)
    if (nEntries <= 0) return TRUE;

    // Check for malicious profiles
    if (nEntries < 2) return FALSE;
    if (nChannels > cmsMAXCHANNELS) return FALSE;

    // Init table to zero
    FUNC5(Tables, 0, sizeof(Tables));

    for (i=0; i < nChannels; i++) {

        Tables[i] = FUNC1(ContextID, nEntries, NULL);
        if (Tables[i] == NULL) goto Error;

        if (!FUNC0(ContextID, io, nEntries, Tables[i]->Table16)) goto Error;
    }


    // Add the table (which may certainly be an identity, but this is up to the optimizer, not the reading code)
    if (!FUNC3(ContextID, lut, cmsAT_END, FUNC4(ContextID, nChannels, Tables)))
        goto Error;

    for (i=0; i < nChannels; i++)
        FUNC2(ContextID, Tables[i]);

    return TRUE;

Error:
    for (i=0; i < nChannels; i++) {
        if (Tables[i]) FUNC2(ContextID, Tables[i]);
    }

    return FALSE;
}