
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int sequnum; } ;
struct TYPE_6__ {int size; int bottom; int capacity; int top; void* last_queued_time; TYPE_2__** queue; } ;
typedef TYPE_1__ Group_JitterBuffer ;
typedef TYPE_2__ Group_Audio_Packet ;


 int GROUP_JBUF_DEAD_SECONDS ;
 int clear_queue (TYPE_1__*) ;
 int is_timeout (void*,int ) ;
 void* unix_time () ;

__attribute__((used)) static int queue(Group_JitterBuffer *q, Group_Audio_Packet *pk)
{
    uint16_t sequnum = pk->sequnum;

    unsigned int num = sequnum % q->size;

    if (!is_timeout(q->last_queued_time, GROUP_JBUF_DEAD_SECONDS)) {
        if ((uint32_t)(sequnum - q->bottom) > (1 << 15)) {

            return -1;
        }
    }

    if ((uint32_t)(sequnum - q->bottom) > q->size) {
        clear_queue(q);
        q->bottom = sequnum - q->capacity;
        q->queue[num] = pk;
        q->top = sequnum + 1;
        q->last_queued_time = unix_time();
        return 0;
    }

    if (q->queue[num])
        return -1;

    q->queue[num] = pk;

    if ((sequnum - q->bottom) >= (q->top - q->bottom))
        q->top = sequnum + 1;

    q->last_queued_time = unix_time();
    return 0;
}
