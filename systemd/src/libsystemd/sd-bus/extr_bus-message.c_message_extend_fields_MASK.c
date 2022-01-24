#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  scalar_t__ uint32_t ;
struct bus_header {int dummy; } ;
struct TYPE_5__ {void* name; } ;
struct TYPE_6__ {int poisoned; int fields_size; int free_header; scalar_t__ n_header_offsets; size_t* header_offsets; void* header; TYPE_1__ error; void* sender; void* destination; void* member; void* interface; void* path; } ;
typedef  TYPE_2__ sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 scalar_t__ FUNC2 (size_t*) ; 
 void* FUNC3 (void*,void*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t) ; 
 void* FUNC8 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC9(sd_bus_message *m, size_t align, size_t sz, bool add_offset) {
        void *op, *np;
        size_t old_size, new_size, start;

        FUNC4(m);

        if (m->poisoned)
                return NULL;

        old_size = sizeof(struct bus_header) + m->fields_size;
        start = FUNC1(old_size, align);
        new_size = start + sz;

        if (new_size < start ||
            new_size > (size_t) ((uint32_t) -1))
                goto poison;

        if (old_size == new_size)
                return (uint8_t*) m->header + old_size;

        if (m->free_header) {
                np = FUNC8(m->header, FUNC0(new_size));
                if (!np)
                        goto poison;
        } else {
                /* Initially, the header is allocated as part of
                 * the sd_bus_message itself, let's replace it by
                 * dynamic data */

                np = FUNC5(FUNC0(new_size));
                if (!np)
                        goto poison;

                FUNC6(np, m->header, sizeof(struct bus_header));
        }

        /* Zero out padding */
        if (start > old_size)
                FUNC7((uint8_t*) np + old_size, start - old_size);

        op = m->header;
        m->header = np;
        m->fields_size = new_size - sizeof(struct bus_header);

        /* Adjust quick access pointers */
        m->path = FUNC3(m->path, op, old_size, m->header);
        m->interface = FUNC3(m->interface, op, old_size, m->header);
        m->member = FUNC3(m->member, op, old_size, m->header);
        m->destination = FUNC3(m->destination, op, old_size, m->header);
        m->sender = FUNC3(m->sender, op, old_size, m->header);
        m->error.name = FUNC3(m->error.name, op, old_size, m->header);

        m->free_header = true;

        if (add_offset) {
                if (m->n_header_offsets >= FUNC2(m->header_offsets))
                        goto poison;

                m->header_offsets[m->n_header_offsets++] = new_size - sizeof(struct bus_header);
        }

        return (uint8_t*) np + start;

poison:
        m->poisoned = true;
        return NULL;
}