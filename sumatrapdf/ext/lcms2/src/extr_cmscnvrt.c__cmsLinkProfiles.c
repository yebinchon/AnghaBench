
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef int cmsPipeline ;
struct TYPE_3__ {int * (* Link ) (int ,scalar_t__,scalar_t__*,int *,int *,int *,scalar_t__) ;} ;
typedef TYPE_1__ cmsIntentsList ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 scalar_t__ INTENT_ABSOLUTE_COLORIMETRIC ;
 scalar_t__ INTENT_PERCEPTUAL ;
 scalar_t__ INTENT_SATURATION ;
 TYPE_1__* SearchIntent (int ,scalar_t__) ;
 int TRUE ;
 int cmsERROR_RANGE ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsGetEncodedICCversion (int ,int ) ;
 int cmsSignalError (int ,int ,char*,scalar_t__) ;
 int * stub1 (int ,scalar_t__,scalar_t__*,int *,int *,int *,scalar_t__) ;

cmsPipeline* _cmsLinkProfiles(cmsContext ContextID,
                              cmsUInt32Number nProfiles,
                              cmsUInt32Number TheIntents[],
                              cmsHPROFILE hProfiles[],
                              cmsBool BPC[],
                              cmsFloat64Number AdaptationStates[],
                              cmsUInt32Number dwFlags)
{
    cmsUInt32Number i;
    cmsIntentsList* Intent;


    if (nProfiles <= 0 || nProfiles > 255) {
         cmsSignalError(ContextID, cmsERROR_RANGE, "Couldn't link '%d' profiles", nProfiles);
        return ((void*)0);
    }

    for (i=0; i < nProfiles; i++) {






        if (TheIntents[i] == INTENT_ABSOLUTE_COLORIMETRIC)
            BPC[i] = FALSE;

        if (TheIntents[i] == INTENT_PERCEPTUAL || TheIntents[i] == INTENT_SATURATION) {


            if (cmsGetEncodedICCversion(ContextID, hProfiles[i]) >= 0x4000000)
                BPC[i] = TRUE;
        }
    }






    Intent = SearchIntent(ContextID, TheIntents[0]);
    if (Intent == ((void*)0)) {
        cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported intent '%d'", TheIntents[0]);
        return ((void*)0);
    }


    return Intent ->Link(ContextID, nProfiles, TheIntents, hProfiles, BPC, AdaptationStates, dwFlags);
}
