#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bus_body_part {struct bus_body_part* next; } ;
struct TYPE_5__ {scalar_t__ n_body_parts; scalar_t__ cached_rindex_part_begin; int /*<<< orphan*/ * cached_rindex_part; int /*<<< orphan*/ * body_end; struct bus_body_part body; } ;
typedef  TYPE_1__ sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct bus_body_part*) ; 

__attribute__((used)) static void FUNC2(sd_bus_message *m) {
        struct bus_body_part *part;

        FUNC0(m);

        part = &m->body;
        while (m->n_body_parts > 0) {
                struct bus_body_part *next = part->next;
                FUNC1(m, part);
                part = next;
                m->n_body_parts--;
        }

        m->body_end = NULL;

        m->cached_rindex_part = NULL;
        m->cached_rindex_part_begin = 0;
}