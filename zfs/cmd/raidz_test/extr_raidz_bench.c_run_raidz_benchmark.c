
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bench_fini_raidz_maps () ;
 int bench_init_raidz_map () ;
 int run_gen_bench () ;
 int run_rec_bench () ;

void
run_raidz_benchmark(void)
{
 bench_init_raidz_map();

 run_gen_bench();
 run_rec_bench();

 bench_fini_raidz_maps();
}
