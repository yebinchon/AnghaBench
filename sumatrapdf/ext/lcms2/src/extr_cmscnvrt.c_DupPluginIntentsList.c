
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* Intents; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ cmsIntentsList ;
typedef TYPE_1__ _cmsIntentsPluginChunkType ;


 size_t IntentPlugin ;
 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupPluginIntentsList(struct _cmsContext_struct* ctx,
                                               const struct _cmsContext_struct* src)
{
   _cmsIntentsPluginChunkType newHead = { ((void*)0) };
   cmsIntentsList* entry;
   cmsIntentsList* Anterior = ((void*)0);
   _cmsIntentsPluginChunkType* head = (_cmsIntentsPluginChunkType*) src->chunks[IntentPlugin];


   for (entry = head->Intents;
        entry != ((void*)0);
        entry = entry ->Next) {

            cmsIntentsList *newEntry = ( cmsIntentsList *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(cmsIntentsList));

            if (newEntry == ((void*)0))
                return;


            newEntry -> Next = ((void*)0);
            if (Anterior)
                Anterior -> Next = newEntry;

            Anterior = newEntry;

            if (newHead.Intents == ((void*)0))
                newHead.Intents = newEntry;
    }

  ctx ->chunks[IntentPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsIntentsPluginChunkType));
}
