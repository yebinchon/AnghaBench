
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * Lerp16; } ;
struct TYPE_6__ {TYPE_3__ Interpolation; int dwFlags; int nOutputs; int nInputs; } ;
typedef TYPE_1__ cmsInterpParams ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_7__ {TYPE_3__ (* Interpolators ) (int ,int ,int ,int ) ;} ;
typedef TYPE_2__ _cmsInterpPluginChunkType ;


 TYPE_3__ DefaultInterpolatorsFactory (int ,int ,int ) ;
 int FALSE ;
 int InterpPlugin ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 TYPE_3__ stub1 (int ,int ,int ,int ) ;

cmsBool _cmsSetInterpolationRoutine(cmsContext ContextID, cmsInterpParams* p)
{
    _cmsInterpPluginChunkType* ptr = (_cmsInterpPluginChunkType*) _cmsContextGetClientChunk(ContextID, InterpPlugin);

    p ->Interpolation.Lerp16 = ((void*)0);


    if (ptr ->Interpolators != ((void*)0))
        p ->Interpolation = ptr->Interpolators(ContextID, p -> nInputs, p ->nOutputs, p ->dwFlags);



    if (p ->Interpolation.Lerp16 == ((void*)0))
        p ->Interpolation = DefaultInterpolatorsFactory(p ->nInputs, p ->nOutputs, p ->dwFlags);


    if (p ->Interpolation.Lerp16 == ((void*)0)) {
            return FALSE;
    }

    return TRUE;
}
