
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsTagSignature ;
typedef int cmsPipeline ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {int IsV4; scalar_t__ RequiredTag; } ;
typedef TYPE_1__ cmsAllowedLUT ;


 TYPE_1__* AllowedLUTTypes ;
 scalar_t__ CheckOne (int ,TYPE_1__ const*,int const*) ;
 scalar_t__ SIZE_OF_ALLOWED_LUT ;

__attribute__((used)) static
const cmsAllowedLUT* FindCombination(cmsContext ContextID, const cmsPipeline* Lut, cmsBool IsV4, cmsTagSignature DestinationTag)
{
    cmsUInt32Number n;

    for (n=0; n < SIZE_OF_ALLOWED_LUT; n++) {

        const cmsAllowedLUT* Tab = AllowedLUTTypes + n;

        if (IsV4 ^ Tab -> IsV4) continue;
        if ((Tab ->RequiredTag != 0) && (Tab ->RequiredTag != DestinationTag)) continue;

        if (CheckOne(ContextID, Tab, Lut)) return Tab;
    }

    return ((void*)0);
}
