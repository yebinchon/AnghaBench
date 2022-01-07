
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; int * chunks; } ;
struct TYPE_3__ {int * member_0; } ;
typedef TYPE_1__ _cmsTagTypePluginChunkType ;


 int DupTagTypeList (struct _cmsContext_struct*,struct _cmsContext_struct const*,size_t) ;
 size_t MPEPlugin ;
 int _cmsSubAllocDup (int ,TYPE_1__*,int) ;

void _cmsAllocMPETypePluginChunk(struct _cmsContext_struct* ctx,
                               const struct _cmsContext_struct* src)
{
    if (src != ((void*)0)) {


        DupTagTypeList(ctx, src, MPEPlugin);
    }
    else {
        static _cmsTagTypePluginChunkType TagTypePluginChunk = { ((void*)0) };
        ctx ->chunks[MPEPlugin] = _cmsSubAllocDup(ctx ->MemPool, &TagTypePluginChunk, sizeof(_cmsTagTypePluginChunkType));
    }

}
