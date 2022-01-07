
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_7__ {scalar_t__ encoding; unsigned char direction; TYPE_1__* subject; int * iter; } ;
typedef TYPE_2__ listTypeIterator ;


 int AL_START_HEAD ;
 int AL_START_TAIL ;
 unsigned char LIST_HEAD ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int * quicklistGetIteratorAtIdx (int ,int,long) ;
 int serverPanic (char*) ;
 TYPE_2__* zmalloc (int) ;

listTypeIterator *listTypeInitIterator(robj *subject, long index,
                                       unsigned char direction) {
    listTypeIterator *li = zmalloc(sizeof(listTypeIterator));
    li->subject = subject;
    li->encoding = subject->encoding;
    li->direction = direction;
    li->iter = ((void*)0);


    int iter_direction =
        direction == LIST_HEAD ? AL_START_TAIL : AL_START_HEAD;
    if (li->encoding == OBJ_ENCODING_QUICKLIST) {
        li->iter = quicklistGetIteratorAtIdx(li->subject->ptr,
                                             iter_direction, index);
    } else {
        serverPanic("Unknown list encoding");
    }
    return li;
}
