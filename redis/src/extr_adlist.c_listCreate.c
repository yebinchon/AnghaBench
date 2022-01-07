
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int * match; int * free; int * dup; scalar_t__ len; int * tail; int head; } ;
typedef struct list list ;


 struct list* zmalloc (int) ;

list *listCreate(void)
{
    struct list *list;

    if ((list = zmalloc(sizeof(*list))) == ((void*)0))
        return ((void*)0);
    list->head = list->tail = ((void*)0);
    list->len = 0;
    list->dup = ((void*)0);
    list->free = ((void*)0);
    list->match = ((void*)0);
    return list;
}
