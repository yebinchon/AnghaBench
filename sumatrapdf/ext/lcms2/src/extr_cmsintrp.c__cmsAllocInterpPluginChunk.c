
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; void** chunks; } ;
struct TYPE_2__ {int * member_0; } ;
typedef TYPE_1__ _cmsInterpPluginChunkType ;


 size_t InterpPlugin ;
 int _cmsAssert (int ) ;
 void* _cmsSubAllocDup (int ,void*,int) ;

void _cmsAllocInterpPluginChunk(struct _cmsContext_struct* ctx, const struct _cmsContext_struct* src)
{
    void* from;

    _cmsAssert(ctx != ((void*)0));

    if (src != ((void*)0)) {
        from = src ->chunks[InterpPlugin];
    }
    else {
        static _cmsInterpPluginChunkType InterpPluginChunk = { ((void*)0) };

        from = &InterpPluginChunk;
    }

    _cmsAssert(from != ((void*)0));
    ctx ->chunks[InterpPlugin] = _cmsSubAllocDup(ctx ->MemPool, from, sizeof(_cmsInterpPluginChunkType));
}
