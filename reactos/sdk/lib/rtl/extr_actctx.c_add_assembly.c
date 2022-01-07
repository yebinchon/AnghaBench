
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct assembly {int type; } ;
typedef enum assembly_type { ____Placeholder_assembly_type } assembly_type ;
struct TYPE_4__ {int num_assemblies; int allocated_assemblies; struct assembly* assemblies; } ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;


 int DPRINT (char*,TYPE_1__*) ;
 int HEAP_ZERO_MEMORY ;
 void* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 void* RtlReAllocateHeap (int ,int ,struct assembly*,unsigned int) ;

__attribute__((used)) static struct assembly *add_assembly(ACTIVATION_CONTEXT *actctx, enum assembly_type at)
{
    struct assembly *assembly;

    DPRINT("add_assembly() actctx %p, activeframe ??\n", actctx);

    if (actctx->num_assemblies == actctx->allocated_assemblies)
    {
        void *ptr;
        unsigned int new_count;
        if (actctx->assemblies)
        {
            new_count = actctx->allocated_assemblies * 2;
            ptr = RtlReAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY,
                                     actctx->assemblies, new_count * sizeof(*assembly) );
        }
        else
        {
            new_count = 4;
            ptr = RtlAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY, new_count * sizeof(*assembly) );
        }
        if (!ptr) return ((void*)0);
        actctx->assemblies = ptr;
        actctx->allocated_assemblies = new_count;
    }

    assembly = &actctx->assemblies[actctx->num_assemblies++];
    assembly->type = at;
    return assembly;
}
