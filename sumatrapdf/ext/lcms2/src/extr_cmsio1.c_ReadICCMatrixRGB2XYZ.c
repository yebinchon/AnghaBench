
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v; } ;
typedef TYPE_1__ cmsMAT3 ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
struct TYPE_5__ {int Z; int Y; int X; } ;
typedef TYPE_2__ cmsCIEXYZ ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsAssert (int ) ;
 int _cmsVEC3init (int ,int *,int ,int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigBlueColorantTag ;
 int cmsSigGreenColorantTag ;
 int cmsSigRedColorantTag ;

__attribute__((used)) static
cmsBool ReadICCMatrixRGB2XYZ(cmsContext ContextID, cmsMAT3* r, cmsHPROFILE hProfile)
{
    cmsCIEXYZ *PtrRed, *PtrGreen, *PtrBlue;

    _cmsAssert(r != ((void*)0));

    PtrRed = (cmsCIEXYZ *) cmsReadTag(ContextID, hProfile, cmsSigRedColorantTag);
    PtrGreen = (cmsCIEXYZ *) cmsReadTag(ContextID, hProfile, cmsSigGreenColorantTag);
    PtrBlue = (cmsCIEXYZ *) cmsReadTag(ContextID, hProfile, cmsSigBlueColorantTag);

    if (PtrRed == ((void*)0) || PtrGreen == ((void*)0) || PtrBlue == ((void*)0))
        return FALSE;

    _cmsVEC3init(ContextID, &r -> v[0], PtrRed -> X, PtrGreen -> X, PtrBlue -> X);
    _cmsVEC3init(ContextID, &r -> v[1], PtrRed -> Y, PtrGreen -> Y, PtrBlue -> Y);
    _cmsVEC3init(ContextID, &r -> v[2], PtrRed -> Z, PtrGreen -> Z, PtrBlue -> Z);

    return TRUE;
}
