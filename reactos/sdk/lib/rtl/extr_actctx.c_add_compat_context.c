
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assembly {int num_compat_contexts; int * compat_contexts; } ;
typedef int * PCOMPATIBILITY_CONTEXT_ELEMENT ;
typedef int COMPATIBILITY_CONTEXT_ELEMENT ;


 int HEAP_ZERO_MEMORY ;
 void* RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 void* RtlReAllocateHeap (int ,int ,int *,unsigned int) ;

__attribute__((used)) static PCOMPATIBILITY_CONTEXT_ELEMENT add_compat_context(struct assembly* assembly)
{
    void *ptr;
    if (assembly->num_compat_contexts)
    {
        unsigned int new_count = assembly->num_compat_contexts + 1;
        ptr = RtlReAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY,
                                 assembly->compat_contexts,
                                 new_count * sizeof(COMPATIBILITY_CONTEXT_ELEMENT) );
    }
    else
    {
        ptr = RtlAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(COMPATIBILITY_CONTEXT_ELEMENT) );
    }
    if (!ptr) return ((void*)0);
    assembly->compat_contexts = ptr;
    return &assembly->compat_contexts[assembly->num_compat_contexts++];
}
