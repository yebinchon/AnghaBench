
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; int * chunks; } ;
struct TYPE_3__ {int * member_0; } ;
typedef TYPE_1__ _cmsTagPluginChunkType ;


 int DupTagList (struct _cmsContext_struct*,struct _cmsContext_struct const*) ;
 size_t TagPlugin ;
 int _cmsSubAllocDup (int ,TYPE_1__*,int) ;

void _cmsAllocTagPluginChunk(struct _cmsContext_struct* ctx,
                                 const struct _cmsContext_struct* src)
{
    if (src != ((void*)0)) {

        DupTagList(ctx, src);
    }
    else {
        static _cmsTagPluginChunkType TagPluginChunk = { ((void*)0) };
        ctx ->chunks[TagPlugin] = _cmsSubAllocDup(ctx ->MemPool, &TagPluginChunk, sizeof(_cmsTagPluginChunkType));
    }

}
