#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int sequnum; } ;
struct TYPE_6__ {int size; int bottom; int capacity; int top; void* last_queued_time; TYPE_2__** queue; } ;
typedef  TYPE_1__ Group_JitterBuffer ;
typedef  TYPE_2__ Group_Audio_Packet ;

/* Variables and functions */
 int /*<<< orphan*/  GROUP_JBUF_DEAD_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 () ; 

__attribute__((used)) static int FUNC3(Group_JitterBuffer *q, Group_Audio_Packet *pk)
{
    uint16_t sequnum = pk->sequnum;

    unsigned int num = sequnum % q->size;

    if (!FUNC1(q->last_queued_time, GROUP_JBUF_DEAD_SECONDS)) {
        if ((uint32_t)(sequnum - q->bottom) > (1 << 15)) {
            /* Drop old packet. */
            return -1;
        }
    }

    if ((uint32_t)(sequnum - q->bottom) > q->size) {
        FUNC0(q);
        q->bottom = sequnum - q->capacity;
        q->queue[num] = pk;
        q->top = sequnum + 1;
        q->last_queued_time = FUNC2();
        return 0;
    }

    if (q->queue[num])
        return -1;

    q->queue[num] = pk;

    if ((sequnum - q->bottom) >= (q->top - q->bottom))
        q->top = sequnum + 1;

    q->last_queued_time = FUNC2();
    return 0;
}