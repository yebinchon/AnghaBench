
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* Tag; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ _cmsTagPluginChunkType ;
typedef TYPE_1__ _cmsTagLinkedList ;


 size_t TagPlugin ;
 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupTagList(struct _cmsContext_struct* ctx,
                    const struct _cmsContext_struct* src)
{
   _cmsTagPluginChunkType newHead = { ((void*)0) };
   _cmsTagLinkedList* entry;
   _cmsTagLinkedList* Anterior = ((void*)0);
   _cmsTagPluginChunkType* head = (_cmsTagPluginChunkType*) src->chunks[TagPlugin];


   for (entry = head->Tag;
       entry != ((void*)0);
       entry = entry ->Next) {

           _cmsTagLinkedList *newEntry = ( _cmsTagLinkedList *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsTagLinkedList));

           if (newEntry == ((void*)0))
               return;


           newEntry -> Next = ((void*)0);
           if (Anterior)
               Anterior -> Next = newEntry;

           Anterior = newEntry;

           if (newHead.Tag == ((void*)0))
               newHead.Tag = newEntry;
   }

   ctx ->chunks[TagPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsTagPluginChunkType));
}
