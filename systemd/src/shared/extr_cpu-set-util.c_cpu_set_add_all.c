
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allocated; int set; } ;
typedef TYPE_1__ CPUSet ;


 scalar_t__ CPU_ISSET_S (unsigned int,int,int ) ;
 int cpu_set_add (TYPE_1__*,unsigned int) ;

int cpu_set_add_all(CPUSet *a, const CPUSet *b) {
        int r;


        for (unsigned cpu_p1 = b->allocated * 8; cpu_p1 > 0; cpu_p1--)
                if (CPU_ISSET_S(cpu_p1 - 1, b->allocated, b->set)) {
                        r = cpu_set_add(a, cpu_p1 - 1);
                        if (r < 0)
                                return r;
                }

        return 0;
}
