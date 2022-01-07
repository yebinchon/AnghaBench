
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
typedef TYPE_1__ _element ;



__attribute__((used)) static int __element_sort_func ( const void *ea, const void *eb, void *data __attribute__( ( unused ) ) )
{
    _element *a = *(_element * *) ea;
    _element *b = *(_element * *) eb;
    return b->index - a->index;
}
