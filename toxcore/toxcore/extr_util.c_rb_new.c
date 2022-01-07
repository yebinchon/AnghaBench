
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; void* data; } ;
typedef TYPE_1__ RingBuffer ;


 void* calloc (int,int) ;
 int free (TYPE_1__*) ;

RingBuffer *rb_new(int size)
{
    RingBuffer *buf = calloc(sizeof(RingBuffer), 1);

    if (!buf) return ((void*)0);

    buf->size = size + 1;

    if (!(buf->data = calloc(buf->size, sizeof(void *)))) {
        free(buf);
        return ((void*)0);
    }

    return buf;
}
