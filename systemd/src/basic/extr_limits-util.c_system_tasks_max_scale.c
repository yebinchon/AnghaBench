
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT64_MAX ;
 int assert (int) ;
 int system_tasks_max () ;

uint64_t system_tasks_max_scale(uint64_t v, uint64_t max) {
        uint64_t t, m;

        assert(max > 0);




        t = system_tasks_max();
        assert(t > 0);

        m = t * v;
        if (m / t != v)
                return UINT64_MAX;

        return m / max;
}
