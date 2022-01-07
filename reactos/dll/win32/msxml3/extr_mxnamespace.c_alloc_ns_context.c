
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nscontext {int max_alloc; struct nscontext* ns; void* uri; void* prefix; scalar_t__ count; } ;


 int DEFAULT_PREFIX_ALLOC_COUNT ;
 void* SysAllocString (int ) ;
 void* heap_alloc (int) ;
 int heap_free (struct nscontext*) ;
 int xmlW ;
 int xmluriW ;

__attribute__((used)) static struct nscontext* alloc_ns_context(void)
{
    struct nscontext *ctxt;

    ctxt = heap_alloc(sizeof(*ctxt));
    if (!ctxt) return ((void*)0);

    ctxt->count = 0;
    ctxt->max_alloc = DEFAULT_PREFIX_ALLOC_COUNT;
    ctxt->ns = heap_alloc(ctxt->max_alloc*sizeof(*ctxt->ns));
    if (!ctxt->ns)
    {
        heap_free(ctxt);
        return ((void*)0);
    }


    ctxt->ns[0].prefix = SysAllocString(xmlW);
    ctxt->ns[0].uri = SysAllocString(xmluriW);
    ctxt->count++;
    if (!ctxt->ns[0].prefix || !ctxt->ns[0].uri)
    {
        heap_free(ctxt->ns);
        heap_free(ctxt);
        return ((void*)0);
    }

    return ctxt;
}
