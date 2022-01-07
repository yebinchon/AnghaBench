
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bus_body_part {struct bus_body_part* next; } ;
struct TYPE_5__ {scalar_t__ n_body_parts; scalar_t__ cached_rindex_part_begin; int * cached_rindex_part; int * body_end; struct bus_body_part body; } ;
typedef TYPE_1__ sd_bus_message ;


 int assert (TYPE_1__*) ;
 int message_free_part (TYPE_1__*,struct bus_body_part*) ;

__attribute__((used)) static void message_reset_parts(sd_bus_message *m) {
        struct bus_body_part *part;

        assert(m);

        part = &m->body;
        while (m->n_body_parts > 0) {
                struct bus_body_part *next = part->next;
                message_free_part(m, part);
                part = next;
                m->n_body_parts--;
        }

        m->body_end = ((void*)0);

        m->cached_rindex_part = ((void*)0);
        m->cached_rindex_part_begin = 0;
}
