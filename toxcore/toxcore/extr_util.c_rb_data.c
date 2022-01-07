
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_4__ {size_t start; size_t size; void** data; } ;
typedef TYPE_1__ RingBuffer ;


 size_t rb_size (TYPE_1__ const*) ;

uint16_t rb_data(const RingBuffer *b, void **dest)
{
    uint16_t i = 0;

    for (; i < rb_size(b); i++)
        dest[i] = b->data[(b->start + i) % b->size];

    return i;
}
