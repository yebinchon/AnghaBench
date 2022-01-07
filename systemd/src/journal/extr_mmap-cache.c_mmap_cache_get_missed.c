
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_missed; } ;
typedef TYPE_1__ MMapCache ;


 int assert (TYPE_1__*) ;

unsigned mmap_cache_get_missed(MMapCache *m) {
        assert(m);

        return m->n_missed;
}
