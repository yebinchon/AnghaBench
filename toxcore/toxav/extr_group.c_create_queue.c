
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; unsigned int capacity; void* queue; } ;
typedef TYPE_1__ Group_JitterBuffer ;
typedef int Group_Audio_Packet ;


 void* calloc (int,unsigned int) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static Group_JitterBuffer *create_queue(unsigned int capacity)
{
    unsigned int size = 1;

    while (size <= capacity) {
        size *= 2;
    }

    Group_JitterBuffer *q;

    if (!(q = calloc(sizeof(Group_JitterBuffer), 1))) return ((void*)0);

    if (!(q->queue = calloc(sizeof(Group_Audio_Packet *), size))) {
        free(q);
        return ((void*)0);
    }

    q->size = size;
    q->capacity = capacity;
    return q;
}
