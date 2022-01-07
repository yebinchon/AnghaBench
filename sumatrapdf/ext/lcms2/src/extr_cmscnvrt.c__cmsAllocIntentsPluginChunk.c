
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; int * chunks; } ;
struct TYPE_3__ {int * member_0; } ;
typedef TYPE_1__ _cmsIntentsPluginChunkType ;


 int DupPluginIntentsList (struct _cmsContext_struct*,struct _cmsContext_struct const*) ;
 size_t IntentPlugin ;
 int _cmsSubAllocDup (int ,TYPE_1__*,int) ;

void _cmsAllocIntentsPluginChunk(struct _cmsContext_struct* ctx,
                                         const struct _cmsContext_struct* src)
{
    if (src != ((void*)0)) {


        DupPluginIntentsList(ctx, src);
    }
    else {
        static _cmsIntentsPluginChunkType IntentsPluginChunkType = { ((void*)0) };
        ctx ->chunks[IntentPlugin] = _cmsSubAllocDup(ctx ->MemPool, &IntentsPluginChunkType, sizeof(_cmsIntentsPluginChunkType));
    }
}
