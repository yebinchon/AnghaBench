
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct bus_body_part {size_t size; struct bus_body_part* next; scalar_t__ data; } ;
struct TYPE_4__ {size_t cached_rindex_part_begin; struct bus_body_part* cached_rindex_part; struct bus_body_part body; } ;
typedef TYPE_1__ sd_bus_message ;


 int assert (TYPE_1__*) ;
 int bus_body_part_map (struct bus_body_part*) ;

__attribute__((used)) static struct bus_body_part* find_part(sd_bus_message *m, size_t index, size_t sz, void **p) {
        struct bus_body_part *part;
        size_t begin;
        int r;

        assert(m);

        if (m->cached_rindex_part && index >= m->cached_rindex_part_begin) {
                part = m->cached_rindex_part;
                begin = m->cached_rindex_part_begin;
        } else {
                part = &m->body;
                begin = 0;
        }

        while (part) {
                if (index < begin)
                        return ((void*)0);

                if (index + sz <= begin + part->size) {

                        r = bus_body_part_map(part);
                        if (r < 0)
                                return ((void*)0);

                        if (p)
                                *p = (uint8_t*) part->data + index - begin;

                        m->cached_rindex_part = part;
                        m->cached_rindex_part_begin = begin;

                        return part;
                }

                begin += part->size;
                part = part->next;
        }

        return ((void*)0);
}
