
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nscontext {int count; struct nscontext* ns; int uri; int prefix; } ;


 int SysFreeString (int ) ;
 int heap_free (struct nscontext*) ;

__attribute__((used)) static void free_ns_context(struct nscontext *ctxt)
{
    int i;

    for (i = 0; i < ctxt->count; i++)
    {
        SysFreeString(ctxt->ns[i].prefix);
        SysFreeString(ctxt->ns[i].uri);
    }

    heap_free(ctxt->ns);
    heap_free(ctxt);
}
