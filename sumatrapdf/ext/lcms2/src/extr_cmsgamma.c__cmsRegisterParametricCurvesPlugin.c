
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_4__ {int nFunctions; int ParameterCount; int FunctionTypes; int Evaluator; } ;
typedef TYPE_1__ cmsPluginParametricCurves ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {int nFunctions; struct TYPE_5__* Next; int ParameterCount; int FunctionTypes; int Evaluator; } ;
typedef TYPE_2__ _cmsParametricCurvesCollection ;
struct TYPE_6__ {TYPE_2__* ParametricCurves; } ;
typedef TYPE_3__ _cmsCurvesPluginChunkType ;


 int CurvesPlugin ;
 int FALSE ;
 int MAX_TYPES_IN_LCMS_PLUGIN ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 scalar_t__ _cmsPluginMalloc (int ,int) ;
 int memmove (int ,int ,int) ;

cmsBool _cmsRegisterParametricCurvesPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    _cmsCurvesPluginChunkType* ctx = ( _cmsCurvesPluginChunkType*) _cmsContextGetClientChunk(ContextID, CurvesPlugin);
    cmsPluginParametricCurves* Plugin = (cmsPluginParametricCurves*) Data;
    _cmsParametricCurvesCollection* fl;

    if (Data == ((void*)0)) {

          ctx -> ParametricCurves = ((void*)0);
          return TRUE;
    }

    fl = (_cmsParametricCurvesCollection*) _cmsPluginMalloc(ContextID, sizeof(_cmsParametricCurvesCollection));
    if (fl == ((void*)0)) return FALSE;


    fl ->Evaluator = Plugin ->Evaluator;
    fl ->nFunctions = Plugin ->nFunctions;


    if (fl ->nFunctions > MAX_TYPES_IN_LCMS_PLUGIN)
        fl ->nFunctions = MAX_TYPES_IN_LCMS_PLUGIN;


    memmove(fl->FunctionTypes, Plugin ->FunctionTypes, fl->nFunctions * sizeof(cmsUInt32Number));
    memmove(fl->ParameterCount, Plugin ->ParameterCount, fl->nFunctions * sizeof(cmsUInt32Number));


    fl ->Next = ctx->ParametricCurves;
    ctx->ParametricCurves = fl;


    return TRUE;
}
