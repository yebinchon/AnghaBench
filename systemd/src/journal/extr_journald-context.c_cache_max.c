
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t CACHE_MAX_FALLBACK ;
 int CACHE_MAX_MAX ;
 int CACHE_MAX_MIN ;
 size_t CLAMP (int,int ,int ) ;
 int log_warning_errno (int,char*) ;
 int procfs_memory_get (int*,int *) ;
 int sc_arg_max () ;

__attribute__((used)) static size_t cache_max(void) {
        static size_t cached = -1;

        if (cached == (size_t) -1) {
                uint64_t mem_total;
                int r;

                r = procfs_memory_get(&mem_total, ((void*)0));
                if (r < 0) {
                        log_warning_errno(r, "Cannot query /proc/meminfo for MemTotal: %m");
                        cached = CACHE_MAX_FALLBACK;
                } else






                        cached = CLAMP(mem_total / 8 / sc_arg_max(), CACHE_MAX_MIN, CACHE_MAX_MAX);
        }

        return cached;
}
