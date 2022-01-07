
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_typelib {int typeinfo_size; int typeinfo_count; struct sltg_block* typeinfo; } ;
struct sltg_block {int length; struct sltg_block* next; scalar_t__ index_string; void* data; } ;


 int chat (char*,void*,int,char const*) ;
 struct sltg_block* xmalloc (int) ;

__attribute__((used)) static void sltg_add_typeinfo(struct sltg_typelib *sltg, void *data, int size, const char *name)
{
    struct sltg_block *block = xmalloc(sizeof(*block));

    chat("sltg_add_typeinfo: %p,%d,%s\n", data, size, name);

    block->length = size;
    block->data = data;
    block->index_string = 0;
    block->next = ((void*)0);

    if (sltg->typeinfo)
    {
        struct sltg_block *typeinfo = sltg->typeinfo;

        while (typeinfo->next)
            typeinfo = typeinfo->next;

        typeinfo->next = block;
    }
    else
        sltg->typeinfo = block;

    sltg->typeinfo_count++;
    sltg->typeinfo_size += size;
}
