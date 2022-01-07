
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_symbol {scalar_t__ avail_in_first; void* alloc_list; int (* mem_free_ptr ) (void*) ;} ;


 int stub1 (void*) ;

__attribute__((used)) static void und_free_all(struct parsed_symbol* sym)
{
    void* next;

    while (sym->alloc_list)
    {
        next = *(void**)sym->alloc_list;
        if(sym->mem_free_ptr) sym->mem_free_ptr(sym->alloc_list);
        sym->alloc_list = next;
    }
    sym->avail_in_first = 0;
}
