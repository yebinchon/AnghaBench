
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_data {int size; int allocated; scalar_t__ data; } ;


 int chat (char*,int,char const*) ;
 int max (int,int) ;
 int strcpy (scalar_t__,char const*) ;
 int strlen (char const*) ;
 scalar_t__ xrealloc (scalar_t__,int) ;

__attribute__((used)) static int add_index(struct sltg_data *index, const char *name)
{
    int name_offset = index->size;
    int new_size = index->size + strlen(name) + 1;

    chat("add_index: name_offset %d, \"%s\"\n", name_offset, name);

    if (new_size > index->allocated)
    {
        index->allocated = max(index->allocated * 2, new_size);
        index->data = xrealloc(index->data, index->allocated);
    }

    strcpy(index->data + index->size, name);
    index->size = new_size;

    return name_offset;
}
