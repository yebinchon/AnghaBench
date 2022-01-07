
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cmsContext_struct {int DefaultMemoryManager; int ** chunks; int MemPool; } ;
typedef int _cmsMemPluginChunkType ;


 size_t MemPlugin ;
 int _cmsAssert (int ) ;
 int * _cmsSubAllocDup (int ,int *,int) ;

void _cmsAllocMemPluginChunk(struct _cmsContext_struct* ctx, const struct _cmsContext_struct* src)
{
    _cmsAssert(ctx != ((void*)0));

    if (src != ((void*)0)) {


        ctx ->chunks[MemPlugin] = _cmsSubAllocDup(ctx ->MemPool, src ->chunks[MemPlugin], sizeof(_cmsMemPluginChunkType));
    }
    else {


        ctx ->chunks[MemPlugin] = &ctx ->DefaultMemoryManager;
    }
}
