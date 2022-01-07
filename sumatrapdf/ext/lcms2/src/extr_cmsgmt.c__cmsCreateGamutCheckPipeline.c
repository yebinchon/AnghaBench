
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int * cmsHPROFILE ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef scalar_t__ cmsBool ;
struct TYPE_3__ {double Thereshold; void* hReverse; void* hForward; void* hInput; } ;
typedef TYPE_1__ GAMUTCHAIN ;


 int BYTES_SH (int) ;
 int CHANNELS_SH (int) ;
 double ERR_THERESHOLD ;
 int GamutSampler ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_Lab_DBL ;
 int _cmsReasonableGridpointsByColorspace (int ,int ,int ) ;
 int cmsAT_BEGIN ;
 int cmsChannelsOf (int ,int ) ;
 int cmsCloseProfile (int ,int *) ;
 void* cmsCreateExtendedTransform (int ,int,int **,scalar_t__*,int*,double*,int *,int ,int,int,int ) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 void* cmsCreateTransform (int ,int *,int,int *,int,int,int ) ;
 int cmsDeleteTransform (int ,void*) ;
 int cmsERROR_RANGE ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_NOCACHE ;
 int cmsGetColorSpace (int ,int *) ;
 scalar_t__ cmsIsMatrixShaper (int ,int *) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int cmsSignalError (int ,int ,char*,int) ;
 int * cmsStageAllocCLut16bit (int ,int,int,int,int *) ;
 int cmsStageSampleCLut16bit (int ,int *,int ,void*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

cmsPipeline* _cmsCreateGamutCheckPipeline(cmsContext ContextID,
                                          cmsHPROFILE hProfiles[],
                                          cmsBool BPC[],
                                          cmsUInt32Number Intents[],
                                          cmsFloat64Number AdaptationStates[],
                                          cmsUInt32Number nGamutPCSposition,
                                          cmsHPROFILE hGamut)
{
    cmsHPROFILE hLab;
    cmsPipeline* Gamut;
    cmsStage* CLUT;
    cmsUInt32Number dwFormat;
    GAMUTCHAIN Chain;
    cmsUInt32Number nChannels, nGridpoints;
    cmsColorSpaceSignature ColorSpace;
    cmsUInt32Number i;
    cmsHPROFILE ProfileList[256];
    cmsBool BPCList[256];
    cmsFloat64Number AdaptationList[256];
    cmsUInt32Number IntentList[256];

    memset(&Chain, 0, sizeof(GAMUTCHAIN));


    if (nGamutPCSposition <= 0 || nGamutPCSposition > 255) {
        cmsSignalError(ContextID, cmsERROR_RANGE, "Wrong position of PCS. 1..255 expected, %d found.", nGamutPCSposition);
        return ((void*)0);
    }

    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    if (hLab == ((void*)0)) return ((void*)0);






    if (cmsIsMatrixShaper(ContextID, hGamut)) {

        Chain.Thereshold = 1.0;
    }
    else {
        Chain.Thereshold = ERR_THERESHOLD;
    }



    for (i=0; i < nGamutPCSposition; i++) {
        ProfileList[i] = hProfiles[i];
        BPCList[i] = BPC[i];
        AdaptationList[i] = AdaptationStates[i];
        IntentList[i] = Intents[i];
    }


    ProfileList[nGamutPCSposition] = hLab;
    BPCList[nGamutPCSposition] = 0;
    AdaptationList[nGamutPCSposition] = 1.0;
    IntentList[nGamutPCSposition] = INTENT_RELATIVE_COLORIMETRIC;


    ColorSpace = cmsGetColorSpace(ContextID, hGamut);

    nChannels = cmsChannelsOf(ContextID, ColorSpace);
    nGridpoints = _cmsReasonableGridpointsByColorspace(ContextID, ColorSpace, cmsFLAGS_HIGHRESPRECALC);
    dwFormat = (CHANNELS_SH(nChannels)|BYTES_SH(2));


    Chain.hInput = cmsCreateExtendedTransform(ContextID,
        nGamutPCSposition + 1,
        ProfileList,
        BPCList,
        IntentList,
        AdaptationList,
        ((void*)0), 0,
        dwFormat, TYPE_Lab_DBL,
        cmsFLAGS_NOCACHE);



    dwFormat = (CHANNELS_SH(nChannels)|BYTES_SH(2));
    Chain.hForward = cmsCreateTransform(ContextID,
        hLab, TYPE_Lab_DBL,
        hGamut, dwFormat,
        INTENT_RELATIVE_COLORIMETRIC,
        cmsFLAGS_NOCACHE);


    Chain.hReverse = cmsCreateTransform(ContextID, hGamut, dwFormat,
        hLab, TYPE_Lab_DBL,
        INTENT_RELATIVE_COLORIMETRIC,
        cmsFLAGS_NOCACHE);



    if (Chain.hInput && Chain.hForward && Chain.hReverse) {




        Gamut = cmsPipelineAlloc(ContextID, 3, 1);
        if (Gamut != ((void*)0)) {

            CLUT = cmsStageAllocCLut16bit(ContextID, nGridpoints, nChannels, 1, ((void*)0));
            if (!cmsPipelineInsertStage(ContextID, Gamut, cmsAT_BEGIN, CLUT)) {
                cmsPipelineFree(ContextID, Gamut);
                Gamut = ((void*)0);
            }
            else {
                cmsStageSampleCLut16bit(ContextID, CLUT, GamutSampler, (void*) &Chain, 0);
            }
        }
    }
    else
        Gamut = ((void*)0);


    if (Chain.hInput) cmsDeleteTransform(ContextID, Chain.hInput);
    if (Chain.hForward) cmsDeleteTransform(ContextID, Chain.hForward);
    if (Chain.hReverse) cmsDeleteTransform(ContextID, Chain.hReverse);
    if (hLab) cmsCloseProfile(ContextID, hLab);


    return Gamut;
}
