
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_11__ {int * Elements; } ;
typedef TYPE_1__ cmsPipeline ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_12__ {TYPE_3__* OptimizationCollection; } ;
typedef TYPE_2__ _cmsOptimizationPluginChunkType ;
struct TYPE_13__ {scalar_t__ (* OptimizePtr ) (int ,TYPE_1__**,int,int*,int*,int*) ;struct TYPE_13__* Next; } ;
typedef TYPE_3__ _cmsOptimizationCollection ;


 TYPE_3__* DefaultOptimization ;
 int FALSE ;
 int FastIdentity16 ;
 int OptimizationPlugin ;
 int OptimizeByResampling (int ,TYPE_1__**,int,int*,int*,int*) ;
 int PreOptimize (int ,TYPE_1__*) ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 int _cmsPipelineSetOptimizationParameters (int ,TYPE_1__*,int ,void*,int *,int *) ;
 int cmsFLAGS_FORCE_CLUT ;
 int cmsFLAGS_NOOPTIMIZE ;
 scalar_t__ stub1 (int ,TYPE_1__**,int,int*,int*,int*) ;
 scalar_t__ stub2 (int ,TYPE_1__**,int,int*,int*,int*) ;

cmsBool _cmsOptimizePipeline(cmsContext ContextID,
                             cmsPipeline** PtrLut,
                             cmsUInt32Number Intent,
                             cmsUInt32Number* InputFormat,
                             cmsUInt32Number* OutputFormat,
                             cmsUInt32Number* dwFlags)
{
    _cmsOptimizationPluginChunkType* ctx = ( _cmsOptimizationPluginChunkType*) _cmsContextGetClientChunk(ContextID, OptimizationPlugin);
    _cmsOptimizationCollection* Opts;
    cmsBool AnySuccess = FALSE;


    if (*dwFlags & cmsFLAGS_FORCE_CLUT) {

        PreOptimize(ContextID, *PtrLut);
        return OptimizeByResampling(ContextID, PtrLut, Intent, InputFormat, OutputFormat, dwFlags);
    }


    if ((*PtrLut) ->Elements == ((void*)0)) {
        _cmsPipelineSetOptimizationParameters(ContextID, *PtrLut, FastIdentity16, (void*) *PtrLut, ((void*)0), ((void*)0));
        return TRUE;
    }


    AnySuccess = PreOptimize(ContextID, *PtrLut);


    if ((*PtrLut) ->Elements == ((void*)0)) {
        _cmsPipelineSetOptimizationParameters(ContextID, *PtrLut, FastIdentity16, (void*) *PtrLut, ((void*)0), ((void*)0));
        return TRUE;
    }


    if (*dwFlags & cmsFLAGS_NOOPTIMIZE)
        return FALSE;


    for (Opts = ctx->OptimizationCollection;
         Opts != ((void*)0);
         Opts = Opts ->Next) {


            if (Opts ->OptimizePtr(ContextID, PtrLut, Intent, InputFormat, OutputFormat, dwFlags)) {

                return TRUE;
            }
    }


    for (Opts = DefaultOptimization;
         Opts != ((void*)0);
         Opts = Opts ->Next) {

            if (Opts ->OptimizePtr(ContextID, PtrLut, Intent, InputFormat, OutputFormat, dwFlags)) {

                return TRUE;
            }
    }


    return AnySuccess;
}
