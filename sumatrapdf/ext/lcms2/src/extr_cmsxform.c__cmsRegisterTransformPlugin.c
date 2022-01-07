
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * xform; } ;
struct TYPE_6__ {int ExpectedVersion; } ;
struct TYPE_8__ {TYPE_2__ factories; TYPE_1__ base; } ;
typedef TYPE_3__ cmsPluginTransform ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef void* cmsBool ;
struct TYPE_9__ {TYPE_5__* TransformCollection; } ;
typedef TYPE_4__ _cmsTransformPluginChunkType ;
struct TYPE_10__ {struct TYPE_10__* Next; int * Factory; void* OldXform; } ;
typedef TYPE_5__ _cmsTransformCollection ;


 void* FALSE ;
 void* TRUE ;
 int TransformPlugin ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 scalar_t__ _cmsPluginMalloc (int ,int) ;

cmsBool _cmsRegisterTransformPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    cmsPluginTransform* Plugin = (cmsPluginTransform*) Data;
    _cmsTransformCollection* fl;
    _cmsTransformPluginChunkType* ctx = ( _cmsTransformPluginChunkType*) _cmsContextGetClientChunk(ContextID,TransformPlugin);

    if (Data == ((void*)0)) {


        ctx->TransformCollection = ((void*)0);
        return TRUE;
    }


    if (Plugin->factories.xform == ((void*)0)) return FALSE;


    fl = (_cmsTransformCollection*) _cmsPluginMalloc(ContextID, sizeof(_cmsTransformCollection));
    if (fl == ((void*)0)) return FALSE;


    if (Plugin->base.ExpectedVersion < 2080) {

           fl->OldXform = TRUE;
    }
    else
           fl->OldXform = FALSE;


    fl->Factory = Plugin->factories.xform;


    fl ->Next = ctx->TransformCollection;
    ctx->TransformCollection = fl;


    return TRUE;
}
