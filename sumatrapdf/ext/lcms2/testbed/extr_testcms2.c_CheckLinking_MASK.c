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
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ cmsSigAToB0Tag ; 
 int /*<<< orphan*/  cmsSigAToB1Tag ; 
 int /*<<< orphan*/  cmsSigCmykData ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC13(void)
{
    cmsHPROFILE h;
    cmsPipeline * pipeline;
    cmsStage *stageBegin, *stageEnd;

    // Create a CLUT based profile
     h = FUNC2(FUNC0(), cmsSigCmykData, 150);

     // link a second tag
     FUNC3(FUNC0(), h, cmsSigAToB1Tag, cmsSigAToB0Tag);

     // Save the linked devicelink
    if (!FUNC10(FUNC0(), h, "lcms2link.icc")) return 0;
    FUNC1(FUNC0(), h);

    // Now open the profile and read the pipeline
    h = FUNC4(FUNC0(), "lcms2link.icc", "r");
    if (h == NULL) return 0;

    pipeline = (cmsPipeline*) FUNC9(FUNC0(), h, cmsSigAToB1Tag);
    if (pipeline == NULL)
    {
        return 0;
    }

    pipeline = FUNC5(FUNC0(), pipeline);

    // extract stage from pipe line
    FUNC8(FUNC0(), pipeline, cmsAT_BEGIN, &stageBegin);
    FUNC8(FUNC0(), pipeline, cmsAT_END,   &stageEnd);
    FUNC7(FUNC0(), pipeline, cmsAT_END,    stageEnd);
    FUNC7(FUNC0(), pipeline, cmsAT_BEGIN,  stageBegin);

    if (FUNC11(FUNC0(), h, cmsSigAToB1Tag) != cmsSigAToB0Tag) return 0;

    FUNC12(FUNC0(), h, cmsSigAToB0Tag, pipeline);
    FUNC6(FUNC0(), pipeline);

    if (!FUNC10(FUNC0(), h, "lcms2link2.icc")) return 0;
    FUNC1(FUNC0(), h);


    return 1;

}