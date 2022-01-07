
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dll_redirect {int dummy; } ;
struct assembly {int allocated_dlls; int num_dlls; struct dll_redirect* dlls; } ;


 int DPRINT (char*,struct assembly*,int) ;
 int HEAP_ZERO_MEMORY ;
 void* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 void* RtlReAllocateHeap (int ,int ,struct dll_redirect*,unsigned int) ;

__attribute__((used)) static struct dll_redirect* add_dll_redirect(struct assembly* assembly)
{
    DPRINT("add_dll_redirect() to assembly %p, num_dlls %d\n", assembly, assembly->allocated_dlls);

    if (assembly->num_dlls == assembly->allocated_dlls)
    {
        void *ptr;
        unsigned int new_count;
        if (assembly->dlls)
        {
            new_count = assembly->allocated_dlls * 2;
            ptr = RtlReAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY,
                                     assembly->dlls, new_count * sizeof(*assembly->dlls) );
        }
        else
        {
            new_count = 4;
            ptr = RtlAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY, new_count * sizeof(*assembly->dlls) );
        }
        if (!ptr) return ((void*)0);
        assembly->dlls = ptr;
        assembly->allocated_dlls = new_count;
    }
    return &assembly->dlls[assembly->num_dlls++];
}
