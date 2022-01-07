
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_symbol {unsigned int avail_in_first; void* alloc_list; void* (* mem_alloc_ptr ) (int) ;} ;


 unsigned int AVAIL_SIZE ;
 int BLOCK_SIZE ;
 void* stub1 (int) ;
 void* stub2 (int) ;

__attribute__((used)) static void* und_alloc(struct parsed_symbol* sym, unsigned int len)
{
    void* ptr;




    if (len > (1024 - sizeof(void*)))
    {

        ptr = sym->mem_alloc_ptr(sizeof(void*) + len);
        if (!ptr) return ((void*)0);
        *(void**)ptr = sym->alloc_list;
        sym->alloc_list = ptr;
        sym->avail_in_first = 0;
        ptr = (char*)sym->alloc_list + sizeof(void*);
    }
    else
    {
        if (len > sym->avail_in_first)
        {

            ptr = sym->mem_alloc_ptr(1024);
            if (!ptr) return ((void*)0);
            *(void**)ptr = sym->alloc_list;
            sym->alloc_list = ptr;
            sym->avail_in_first = (1024 - sizeof(void*));
        }

        ptr = (char*)sym->alloc_list + 1024 - sym->avail_in_first;
        sym->avail_in_first -= len;
    }
    return ptr;


}
