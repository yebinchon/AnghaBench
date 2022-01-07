
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * InterpolatorsFactory; } ;
typedef TYPE_1__ cmsPluginInterpolation ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_4__ {int * Interpolators; } ;
typedef TYPE_2__ _cmsInterpPluginChunkType ;


 int InterpPlugin ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;

cmsBool _cmsRegisterInterpPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    cmsPluginInterpolation* Plugin = (cmsPluginInterpolation*) Data;
    _cmsInterpPluginChunkType* ptr = (_cmsInterpPluginChunkType*) _cmsContextGetClientChunk(ContextID, InterpPlugin);

    if (Data == ((void*)0)) {

        ptr ->Interpolators = ((void*)0);
        return TRUE;
    }


    ptr ->Interpolators = Plugin ->InterpolatorsFactory;
    return TRUE;
}
