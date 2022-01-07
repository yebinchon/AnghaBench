
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int size; int start; void** data; } ;
typedef TYPE_1__ RingBuffer ;



void *rb_write(RingBuffer *b, void *p)
{
    void *rc = ((void*)0);

    if ((b->end + 1) % b->size == b->start)
        rc = b->data[b->start];

    b->data[b->end] = p;
    b->end = (b->end + 1) % b->size;

    if (b->end == b->start)
        b->start = (b->start + 1) % b->size;

    return rc;
}
