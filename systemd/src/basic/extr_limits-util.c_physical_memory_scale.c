
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT64_MAX ;
 int assert (int) ;
 int page_size () ;
 int physical_memory () ;

uint64_t physical_memory_scale(uint64_t v, uint64_t max) {
        uint64_t p, m, ps, r;

        assert(max > 0);




        ps = page_size();
        assert(ps > 0);

        p = physical_memory() / ps;
        assert(p > 0);

        m = p * v;
        if (m / p != v)
                return UINT64_MAX;

        m /= max;

        r = m * ps;
        if (r / ps != m)
                return UINT64_MAX;

        return r;
}
