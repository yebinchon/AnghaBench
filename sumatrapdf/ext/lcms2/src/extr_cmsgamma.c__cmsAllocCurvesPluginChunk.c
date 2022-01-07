
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; int * chunks; } ;
struct TYPE_3__ {int * member_0; } ;
typedef TYPE_1__ _cmsCurvesPluginChunkType ;


 size_t CurvesPlugin ;
 int DupPluginCurvesList (struct _cmsContext_struct*,struct _cmsContext_struct const*) ;
 int _cmsAssert (int ) ;
 int _cmsSubAllocDup (int ,TYPE_1__*,int) ;

void _cmsAllocCurvesPluginChunk(struct _cmsContext_struct* ctx,
                                const struct _cmsContext_struct* src)
{
    _cmsAssert(ctx != ((void*)0));

    if (src != ((void*)0)) {


       DupPluginCurvesList(ctx, src);
    }
    else {
        static _cmsCurvesPluginChunkType CurvesPluginChunk = { ((void*)0) };
        ctx ->chunks[CurvesPlugin] = _cmsSubAllocDup(ctx ->MemPool, &CurvesPluginChunk, sizeof(_cmsCurvesPluginChunkType));
    }
}
