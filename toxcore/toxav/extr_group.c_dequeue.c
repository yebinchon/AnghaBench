
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {unsigned int top; unsigned int bottom; unsigned int size; scalar_t__ capacity; int ** queue; } ;
typedef TYPE_1__ Group_JitterBuffer ;
typedef int Group_Audio_Packet ;



__attribute__((used)) static Group_Audio_Packet *dequeue(Group_JitterBuffer *q, int *success)
{
    if (q->top == q->bottom) {
        *success = 0;
        return ((void*)0);
    }

    unsigned int num = q->bottom % q->size;

    if (q->queue[num]) {
        Group_Audio_Packet *ret = q->queue[num];
        q->queue[num] = ((void*)0);
        ++q->bottom;
        *success = 1;
        return ret;
    }

    if ((uint32_t)(q->top - q->bottom) > q->capacity) {
        ++q->bottom;
        *success = 2;
        return ((void*)0);
    }

    *success = 0;
    return ((void*)0);
}
