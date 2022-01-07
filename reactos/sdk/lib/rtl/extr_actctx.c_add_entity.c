
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entity_array {int num; int allocated; struct entity* base; } ;
struct entity {int kind; } ;
typedef int DWORD ;


 int HEAP_ZERO_MEMORY ;
 void* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 void* RtlReAllocateHeap (int ,int ,struct entity*,unsigned int) ;

__attribute__((used)) static struct entity* add_entity(struct entity_array *array, DWORD kind)
{
    struct entity* entity;

    if (array->num == array->allocated)
    {
        void *ptr;
        unsigned int new_count;
        if (array->base)
        {
            new_count = array->allocated * 2;
            ptr = RtlReAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY,
                                     array->base, new_count * sizeof(*array->base) );
        }
        else
        {
            new_count = 4;
            ptr = RtlAllocateHeap( RtlGetProcessHeap(), HEAP_ZERO_MEMORY, new_count * sizeof(*array->base) );
        }
        if (!ptr) return ((void*)0);
        array->base = ptr;
        array->allocated = new_count;
    }
    entity = &array->base[array->num++];
    entity->kind = kind;
    return entity;
}
