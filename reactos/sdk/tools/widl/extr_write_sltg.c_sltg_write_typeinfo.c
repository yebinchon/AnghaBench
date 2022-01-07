
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_typelib {short typeinfo_count; struct sltg_block* typeinfo; } ;
struct sltg_block {int length; short* data; struct sltg_block* next; } ;
typedef int count ;


 int assert (int ) ;
 int chat (char*,int,int) ;
 int put_data (short*,int) ;

__attribute__((used)) static void sltg_write_typeinfo(struct sltg_typelib *typelib)
{
    int i;
    struct sltg_block *block;
    short count = typelib->typeinfo_count;

    put_data(&count, sizeof(count));

    block = typelib->typeinfo;
    for (i = 0; i < typelib->typeinfo_count; i++)
    {
        chat("sltg_write_typeinfo: writing block %d: %d bytes\n", i, block->length);

        put_data(block->data, block->length);
        block = block->next;
    }
    assert(block == ((void*)0));
}
