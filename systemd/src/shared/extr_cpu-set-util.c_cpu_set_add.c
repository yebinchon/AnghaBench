
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int set; int allocated; } ;
typedef TYPE_1__ CPUSet ;


 int CPU_SET_S (unsigned int,int ,int ) ;
 int ERANGE ;
 int cpu_set_realloc (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int cpu_set_add(CPUSet *cpu_set, unsigned cpu) {
        int r;

        if (cpu >= 8192)

                return -ERANGE;

        r = cpu_set_realloc(cpu_set, cpu + 1);
        if (r < 0)
                return r;

        CPU_SET_S(cpu, cpu_set->allocated, cpu_set->set);
        return 0;
}
