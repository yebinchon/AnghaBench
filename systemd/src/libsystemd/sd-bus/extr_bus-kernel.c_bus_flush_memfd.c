
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int n_memfd_cache; TYPE_1__* memfd_cache; } ;
typedef TYPE_2__ sd_bus ;
struct TYPE_5__ {int mapped; int address; int fd; } ;


 int assert (TYPE_2__*) ;
 int close_and_munmap (int ,int ,int ) ;

void bus_flush_memfd(sd_bus *b) {
        unsigned i;

        assert(b);

        for (i = 0; i < b->n_memfd_cache; i++)
                close_and_munmap(b->memfd_cache[i].fd, b->memfd_cache[i].address, b->memfd_cache[i].mapped);
}
