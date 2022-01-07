
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* FactoryList; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ cmsFormattersFactoryList ;
typedef TYPE_1__ _cmsFormattersPluginChunkType ;


 size_t FormattersPlugin ;
 int _cmsAssert (int ) ;
 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupFormatterFactoryList(struct _cmsContext_struct* ctx,
                                               const struct _cmsContext_struct* src)
{
   _cmsFormattersPluginChunkType newHead = { ((void*)0) };
   cmsFormattersFactoryList* entry;
   cmsFormattersFactoryList* Anterior = ((void*)0);
   _cmsFormattersPluginChunkType* head = (_cmsFormattersPluginChunkType*) src->chunks[FormattersPlugin];

     _cmsAssert(head != ((void*)0));


   for (entry = head->FactoryList;
       entry != ((void*)0);
       entry = entry ->Next) {

           cmsFormattersFactoryList *newEntry = ( cmsFormattersFactoryList *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(cmsFormattersFactoryList));

           if (newEntry == ((void*)0))
               return;


           newEntry -> Next = ((void*)0);
           if (Anterior)
               Anterior -> Next = newEntry;

           Anterior = newEntry;

           if (newHead.FactoryList == ((void*)0))
               newHead.FactoryList = newEntry;
   }

   ctx ->chunks[FormattersPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsFormattersPluginChunkType));
}
