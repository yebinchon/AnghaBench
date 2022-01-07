
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int quicklistNode ;
struct TYPE_6__ {scalar_t__ direction; int offset; int * current; int * zi; } ;
typedef TYPE_1__ quicklistIter ;
struct TYPE_7__ {int zi; TYPE_3__* node; scalar_t__ quicklist; } ;
typedef TYPE_2__ quicklistEntry ;
typedef int quicklist ;
struct TYPE_8__ {int * next; int * prev; } ;


 scalar_t__ AL_START_HEAD ;
 scalar_t__ AL_START_TAIL ;
 int quicklistDelIndex (int *,TYPE_3__*,int *) ;

void quicklistDelEntry(quicklistIter *iter, quicklistEntry *entry) {
    quicklistNode *prev = entry->node->prev;
    quicklistNode *next = entry->node->next;
    int deleted_node = quicklistDelIndex((quicklist *)entry->quicklist,
                                         entry->node, &entry->zi);


    iter->zi = ((void*)0);


    if (deleted_node) {
        if (iter->direction == AL_START_HEAD) {
            iter->current = next;
            iter->offset = 0;
        } else if (iter->direction == AL_START_TAIL) {
            iter->current = prev;
            iter->offset = -1;
        }
    }
}
