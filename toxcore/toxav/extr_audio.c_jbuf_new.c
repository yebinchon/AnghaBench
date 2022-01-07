
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct RTPMessage {int dummy; } ;
struct JitterBuffer {unsigned int size; int capacity; void* queue; } ;


 void* calloc (int,unsigned int) ;
 int free (struct JitterBuffer*) ;

__attribute__((used)) static struct JitterBuffer *jbuf_new(uint32_t capacity)
{
    unsigned int size = 1;

    while (size <= (capacity * 4)) {
        size *= 2;
    }

    struct JitterBuffer *q;

    if (!(q = calloc(sizeof(struct JitterBuffer), 1))) return ((void*)0);

    if (!(q->queue = calloc(sizeof(struct RTPMessage *), size))) {
        free(q);
        return ((void*)0);
    }

    q->size = size;
    q->capacity = capacity;
    return q;
}
