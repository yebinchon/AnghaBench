
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int offset; int direction; int * zi; TYPE_2__ const* quicklist; int current; } ;
typedef TYPE_1__ quicklistIter ;
struct TYPE_7__ {int tail; int head; } ;
typedef TYPE_2__ quicklist ;


 int AL_START_HEAD ;
 int AL_START_TAIL ;
 TYPE_1__* zmalloc (int) ;

quicklistIter *quicklistGetIterator(const quicklist *quicklist, int direction) {
    quicklistIter *iter;

    iter = zmalloc(sizeof(*iter));

    if (direction == AL_START_HEAD) {
        iter->current = quicklist->head;
        iter->offset = 0;
    } else if (direction == AL_START_TAIL) {
        iter->current = quicklist->tail;
        iter->offset = -1;
    }

    iter->direction = direction;
    iter->quicklist = quicklist;

    iter->zi = ((void*)0);

    return iter;
}
