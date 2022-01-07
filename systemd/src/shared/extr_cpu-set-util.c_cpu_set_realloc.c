
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cpu_set_t ;
struct TYPE_4__ {size_t allocated; int * set; } ;
typedef TYPE_1__ CPUSet ;


 size_t CPU_ALLOC_SIZE (unsigned int) ;
 int ENOMEM ;
 int assert (TYPE_1__*) ;
 int memzero (int *,int) ;
 int * realloc (int *,size_t) ;

int cpu_set_realloc(CPUSet *cpu_set, unsigned ncpus) {
        size_t need;

        assert(cpu_set);

        need = CPU_ALLOC_SIZE(ncpus);
        if (need > cpu_set->allocated) {
                cpu_set_t *t;

                t = realloc(cpu_set->set, need);
                if (!t)
                        return -ENOMEM;

                memzero((uint8_t*) t + cpu_set->allocated, need - cpu_set->allocated);

                cpu_set->set = t;
                cpu_set->allocated = need;
        }

        return 0;
}
