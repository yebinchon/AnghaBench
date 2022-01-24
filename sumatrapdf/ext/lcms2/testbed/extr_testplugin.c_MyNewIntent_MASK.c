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
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 size_t INTENT_DECEPTIVE ; 
 size_t INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cmsSigGrayData ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsPipeline*  FUNC5(cmsContext      ContextID,
                          cmsUInt32Number nProfiles,
                          cmsUInt32Number TheIntents[],
                          cmsHPROFILE     hProfiles[],
                          cmsBool         BPC[],
                          cmsFloat64Number AdaptationStates[],
                          cmsUInt32Number dwFlags)
{
    cmsPipeline*    Result;
    cmsUInt32Number ICCIntents[256];
    cmsUInt32Number i;

 for (i=0; i < nProfiles; i++)
        ICCIntents[i] = (TheIntents[i] == INTENT_DECEPTIVE) ? INTENT_PERCEPTUAL :
                                                 TheIntents[i];

 if (FUNC1(ContextID, hProfiles[0]) != cmsSigGrayData ||
     FUNC1(ContextID, hProfiles[nProfiles-1]) != cmsSigGrayData)
           return FUNC0(ContextID, nProfiles,
                                   ICCIntents, hProfiles,
                                   BPC, AdaptationStates,
                                   dwFlags);

    Result = FUNC2(ContextID, 1, 1);
    if (Result == NULL) return NULL;

    FUNC3(ContextID, Result, cmsAT_BEGIN,
                            FUNC4(ContextID, 1));

    return Result;
}