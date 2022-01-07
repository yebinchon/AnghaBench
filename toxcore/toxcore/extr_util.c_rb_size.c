
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ end; scalar_t__ start; scalar_t__ size; } ;
typedef TYPE_1__ RingBuffer ;


 scalar_t__ rb_empty (TYPE_1__ const*) ;

uint16_t rb_size(const RingBuffer *b)
{
    if (rb_empty(b))
        return 0;

    return
        b->end > b->start ?
        b->end - b->start :
        (b->size - b->start) + b->end;
}
