
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* TransformCollection; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ _cmsTransformPluginChunkType ;
typedef TYPE_1__ _cmsTransformCollection ;


 size_t TransformPlugin ;
 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupPluginTransformList(struct _cmsContext_struct* ctx,
                                               const struct _cmsContext_struct* src)
{
   _cmsTransformPluginChunkType newHead = { ((void*)0) };
   _cmsTransformCollection* entry;
   _cmsTransformCollection* Anterior = ((void*)0);
   _cmsTransformPluginChunkType* head = (_cmsTransformPluginChunkType*) src->chunks[TransformPlugin];


   for (entry = head->TransformCollection;
        entry != ((void*)0);
        entry = entry ->Next) {

            _cmsTransformCollection *newEntry = ( _cmsTransformCollection *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsTransformCollection));

            if (newEntry == ((void*)0))
                return;


            newEntry -> Next = ((void*)0);
            if (Anterior)
                Anterior -> Next = newEntry;

            Anterior = newEntry;

            if (newHead.TransformCollection == ((void*)0))
                newHead.TransformCollection = newEntry;
    }

  ctx ->chunks[TransformPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsTransformPluginChunkType));
}
