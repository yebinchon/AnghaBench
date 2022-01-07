
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_typelib {int index; } ;
struct sltg_block {int dummy; } ;


 int add_block_index (struct sltg_typelib*,void*,int,int) ;
 int add_index (int *,char const*) ;
 int chat (char*,void*,int,char const*) ;
 struct sltg_block* xmalloc (int) ;

__attribute__((used)) static void add_block(struct sltg_typelib *sltg, void *data, int size, const char *name)
{
    struct sltg_block *block = xmalloc(sizeof(*block));
    int index;

    chat("add_block: %p,%d,\"%s\"\n", data, size, name);

    index = add_index(&sltg->index, name);

    add_block_index(sltg, data, size, index);
}
