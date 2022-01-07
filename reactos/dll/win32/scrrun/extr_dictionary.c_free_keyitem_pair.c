
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyitem_pair {int item; int key; } ;


 int VariantClear (int *) ;
 int heap_free (struct keyitem_pair*) ;

__attribute__((used)) static void free_keyitem_pair(struct keyitem_pair *pair)
{
    VariantClear(&pair->key);
    VariantClear(&pair->item);
    heap_free(pair);
}
