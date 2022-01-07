
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * OptimizePtr; } ;
typedef TYPE_1__ cmsPluginOptimization ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {TYPE_3__* OptimizationCollection; } ;
typedef TYPE_2__ _cmsOptimizationPluginChunkType ;
struct TYPE_6__ {struct TYPE_6__* Next; int * OptimizePtr; } ;
typedef TYPE_3__ _cmsOptimizationCollection ;


 int FALSE ;
 int OptimizationPlugin ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 scalar_t__ _cmsPluginMalloc (int ,int) ;

cmsBool _cmsRegisterOptimizationPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    cmsPluginOptimization* Plugin = (cmsPluginOptimization*) Data;
    _cmsOptimizationPluginChunkType* ctx = ( _cmsOptimizationPluginChunkType*) _cmsContextGetClientChunk(ContextID, OptimizationPlugin);
    _cmsOptimizationCollection* fl;

    if (Data == ((void*)0)) {

        ctx->OptimizationCollection = ((void*)0);
        return TRUE;
    }


    if (Plugin ->OptimizePtr == ((void*)0)) return FALSE;

    fl = (_cmsOptimizationCollection*) _cmsPluginMalloc(ContextID, sizeof(_cmsOptimizationCollection));
    if (fl == ((void*)0)) return FALSE;


    fl ->OptimizePtr = Plugin ->OptimizePtr;


    fl ->Next = ctx->OptimizationCollection;


    ctx ->OptimizationCollection = fl;


    return TRUE;
}
