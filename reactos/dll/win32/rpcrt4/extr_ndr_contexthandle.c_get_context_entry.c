
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_handle_entry {scalar_t__ magic; } ;
typedef struct context_handle_entry* NDR_CCONTEXT ;


 scalar_t__ NDR_CONTEXT_HANDLE_MAGIC ;

__attribute__((used)) static struct context_handle_entry *get_context_entry(NDR_CCONTEXT CContext)
{
    struct context_handle_entry *che = CContext;

    if (che->magic != NDR_CONTEXT_HANDLE_MAGIC)
        return ((void*)0);
    return che;
}
