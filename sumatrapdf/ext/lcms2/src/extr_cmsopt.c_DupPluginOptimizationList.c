
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* OptimizationCollection; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ _cmsOptimizationPluginChunkType ;
typedef TYPE_1__ _cmsOptimizationCollection ;


 size_t OptimizationPlugin ;
 int _cmsAssert (int ) ;
 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupPluginOptimizationList(struct _cmsContext_struct* ctx,
                               const struct _cmsContext_struct* src)
{
   _cmsOptimizationPluginChunkType newHead = { ((void*)0) };
   _cmsOptimizationCollection* entry;
   _cmsOptimizationCollection* Anterior = ((void*)0);
   _cmsOptimizationPluginChunkType* head = (_cmsOptimizationPluginChunkType*) src->chunks[OptimizationPlugin];

    _cmsAssert(ctx != ((void*)0));
    _cmsAssert(head != ((void*)0));


   for (entry = head->OptimizationCollection;
        entry != ((void*)0);
        entry = entry ->Next) {

            _cmsOptimizationCollection *newEntry = ( _cmsOptimizationCollection *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsOptimizationCollection));

            if (newEntry == ((void*)0))
                return;


            newEntry -> Next = ((void*)0);
            if (Anterior)
                Anterior -> Next = newEntry;

            Anterior = newEntry;

            if (newHead.OptimizationCollection == ((void*)0))
                newHead.OptimizationCollection = newEntry;
    }

  ctx ->chunks[OptimizationPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsOptimizationPluginChunkType));
}
