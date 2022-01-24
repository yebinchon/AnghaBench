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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsBool ;
struct TYPE_3__ {void* hIlimit; void* sRGB2Lab; void* hLab2sRGB; } ;
typedef  TYPE_1__ FakeCMYKParams ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ForwardSampler ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  ReverseSampler ; 
 int TYPE_CMYK_16 ; 
 int TYPE_Lab_16 ; 
 int TYPE_RGB_DBL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 
 int cmsFLAGS_NOCACHE ; 
 int cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  cmsSigAToB0Tag ; 
 int /*<<< orphan*/  cmsSigAToB1Tag ; 
 int /*<<< orphan*/  cmsSigAToB2Tag ; 
 int /*<<< orphan*/  cmsSigBToA0Tag ; 
 int /*<<< orphan*/  cmsSigBToA1Tag ; 
 int /*<<< orphan*/  cmsSigBToA2Tag ; 
 int /*<<< orphan*/  cmsSigCmykData ; 
 int /*<<< orphan*/  cmsSigLabData ; 
 int /*<<< orphan*/  cmsSigOutputClass ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static
cmsHPROFILE FUNC24(cmsFloat64Number InkLimit, cmsBool lUseAboveRGB)
{
    cmsHPROFILE hICC;
    cmsPipeline* AToB0, *BToA0;
    cmsStage* CLUT;
    cmsContext ContextID;
    FakeCMYKParams p;
    cmsHPROFILE hLab, hsRGB, hLimit;
    cmsUInt32Number cmykfrm;

    ContextID = FUNC3();

    if (lUseAboveRGB)
        hsRGB = FUNC2();
    else
       hsRGB  = FUNC11(ContextID);

    hLab   = FUNC8(ContextID, NULL);
    hLimit = FUNC7(ContextID, cmsSigCmykData, InkLimit);

    cmykfrm = FUNC4(1) | FUNC0(0)|FUNC1(4);
    p.hLab2sRGB = FUNC10(ContextID, hLab,  TYPE_Lab_16,  hsRGB, TYPE_RGB_DBL, INTENT_PERCEPTUAL, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);
    p.sRGB2Lab  = FUNC10(ContextID, hsRGB, TYPE_RGB_DBL, hLab,  TYPE_Lab_16,  INTENT_PERCEPTUAL, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);
    p.hIlimit   = FUNC10(ContextID, hLimit, cmykfrm, NULL, TYPE_CMYK_16, INTENT_PERCEPTUAL, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);

    FUNC6(ContextID, hLab); FUNC6(ContextID, hsRGB); FUNC6(ContextID, hLimit);

    hICC = FUNC9(ContextID);
    if (!hICC) return NULL;

    FUNC20(ContextID, hICC, 4.3);

    FUNC18(ContextID, hICC, cmsSigOutputClass);
    FUNC17(ContextID, hICC,  cmsSigCmykData);
    FUNC19(ContextID, hICC,         cmsSigLabData);

    BToA0 = FUNC14(ContextID, 3, 4);
    if (BToA0 == NULL) return 0;
    CLUT = FUNC21(ContextID, 17, 3, 4, NULL);
    if (CLUT == NULL) return 0;
    if (!FUNC22(ContextID, CLUT, ForwardSampler, &p, 0)) return 0;

    FUNC16(ContextID, BToA0, cmsAT_BEGIN, FUNC5(ContextID, 3));
    FUNC16(ContextID, BToA0, cmsAT_END, CLUT);
    FUNC16(ContextID, BToA0, cmsAT_END, FUNC5(ContextID, 4));

    if (!FUNC23(ContextID, hICC, cmsSigBToA0Tag, (void*) BToA0)) return 0;
    FUNC15(ContextID, BToA0);

    AToB0 = FUNC14(ContextID, 4, 3);
    if (AToB0 == NULL) return 0;
    CLUT = FUNC21(ContextID, 17, 4, 3, NULL);
    if (CLUT == NULL) return 0;
    if (!FUNC22(ContextID, CLUT, ReverseSampler, &p, 0)) return 0;

    FUNC16(ContextID, AToB0, cmsAT_BEGIN, FUNC5(ContextID, 4));
    FUNC16(ContextID, AToB0, cmsAT_END, CLUT);
    FUNC16(ContextID, AToB0, cmsAT_END, FUNC5(ContextID, 3));

    if (!FUNC23(ContextID, hICC, cmsSigAToB0Tag, (void*) AToB0)) return 0;
    FUNC15(ContextID, AToB0);

    FUNC12(ContextID, p.hLab2sRGB);
    FUNC12(ContextID, p.sRGB2Lab);
    FUNC12(ContextID, p.hIlimit);

    FUNC13(ContextID, hICC, cmsSigAToB1Tag, cmsSigAToB0Tag);
    FUNC13(ContextID, hICC, cmsSigAToB2Tag, cmsSigAToB0Tag);
    FUNC13(ContextID, hICC, cmsSigBToA1Tag, cmsSigBToA0Tag);
    FUNC13(ContextID, hICC, cmsSigBToA2Tag, cmsSigBToA0Tag);

    return hICC;
}