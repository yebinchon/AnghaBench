#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int size; unsigned int capacity; void* queue; } ;
typedef  TYPE_1__ Group_JitterBuffer ;
typedef  int /*<<< orphan*/  Group_Audio_Packet ;

/* Variables and functions */
 void* FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static Group_JitterBuffer *FUNC2(unsigned int capacity)
{
    unsigned int size = 1;

    while (size <= capacity) {
        size *= 2;
    }

    Group_JitterBuffer *q;

    if (!(q = FUNC0(sizeof(Group_JitterBuffer), 1))) return NULL;

    if (!(q->queue = FUNC0(sizeof(Group_Audio_Packet *), size))) {
        FUNC1(q);
        return NULL;
    }

    q->size = size;
    q->capacity = capacity;
    return q;
}