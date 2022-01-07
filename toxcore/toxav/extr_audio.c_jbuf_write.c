
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int sequnum; } ;
struct RTPMessage {TYPE_1__ header; } ;
struct JitterBuffer {int size; int bottom; int capacity; int top; struct RTPMessage** queue; } ;


 int LOGGER_DEBUG (char*,struct JitterBuffer*) ;
 int jbuf_clear (struct JitterBuffer*) ;

__attribute__((used)) static int jbuf_write(struct JitterBuffer *q, struct RTPMessage *m)
{
    uint16_t sequnum = m->header.sequnum;

    unsigned int num = sequnum % q->size;

    if ((uint32_t)(sequnum - q->bottom) > q->size) {
        LOGGER_DEBUG("Clearing filled jitter buffer: %p", q);

        jbuf_clear(q);
        q->bottom = sequnum - q->capacity;
        q->queue[num] = m;
        q->top = sequnum + 1;
        return 0;
    }

    if (q->queue[num])
        return -1;

    q->queue[num] = m;

    if ((sequnum - q->bottom) >= (q->top - q->bottom))
        q->top = sequnum + 1;

    return 0;
}
