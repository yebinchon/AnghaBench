
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* TagTypes; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ _cmsTagTypePluginChunkType ;
typedef TYPE_1__ _cmsTagTypeLinkedList ;


 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupTagTypeList(struct _cmsContext_struct* ctx,
                    const struct _cmsContext_struct* src,
                    int loc)
{
   _cmsTagTypePluginChunkType newHead = { ((void*)0) };
   _cmsTagTypeLinkedList* entry;
   _cmsTagTypeLinkedList* Anterior = ((void*)0);
   _cmsTagTypePluginChunkType* head = (_cmsTagTypePluginChunkType*) src->chunks[loc];


   for (entry = head->TagTypes;
       entry != ((void*)0);
       entry = entry ->Next) {

           _cmsTagTypeLinkedList *newEntry = ( _cmsTagTypeLinkedList *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsTagTypeLinkedList));

           if (newEntry == ((void*)0))
               return;


           newEntry -> Next = ((void*)0);
           if (Anterior)
               Anterior -> Next = newEntry;

           Anterior = newEntry;

           if (newHead.TagTypes == ((void*)0))
               newHead.TagTypes = newEntry;
   }

   ctx ->chunks[loc] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsTagTypePluginChunkType));
}
