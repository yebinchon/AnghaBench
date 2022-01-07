
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int direction; int next; } ;
typedef TYPE_1__ listIter ;
struct TYPE_7__ {int tail; int head; } ;
typedef TYPE_2__ list ;


 int AL_START_HEAD ;
 TYPE_1__* zmalloc (int) ;

listIter *listGetIterator(list *list, int direction)
{
    listIter *iter;

    if ((iter = zmalloc(sizeof(*iter))) == ((void*)0)) return ((void*)0);
    if (direction == AL_START_HEAD)
        iter->next = list->head;
    else
        iter->next = list->tail;
    iter->direction = direction;
    return iter;
}
