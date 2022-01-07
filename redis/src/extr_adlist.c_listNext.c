
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ listNode ;
struct TYPE_6__ {scalar_t__ direction; TYPE_1__* next; } ;
typedef TYPE_2__ listIter ;


 scalar_t__ AL_START_HEAD ;

listNode *listNext(listIter *iter)
{
    listNode *current = iter->next;

    if (current != ((void*)0)) {
        if (iter->direction == AL_START_HEAD)
            iter->next = current->next;
        else
            iter->next = current->prev;
    }
    return current;
}
