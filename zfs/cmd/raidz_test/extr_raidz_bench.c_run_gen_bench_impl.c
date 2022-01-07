
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef scalar_t__ hrtime_t ;
struct TYPE_5__ {int rto_dcols; } ;
struct TYPE_4__ {unsigned long long io_size; } ;


 int BENCH_ASHIFT ;
 int D_ALL ;
 unsigned long long GEN_BENCH_MEMORY ;
 int LOG (int ,char*,char const*,int ,unsigned long long,unsigned long long,double,double,unsigned int) ;
 unsigned long long MAX_CS_SHIFT ;
 unsigned long long MIN_CS_SHIFT ;
 double NSEC2SEC (double) ;
 int RAIDZ_GEN_NUM ;
 scalar_t__ gethrtime () ;
 int * raidz_gen_name ;
 int rm_bench ;
 TYPE_3__ rto_opts ;
 int vdev_raidz_generate_parity (int ) ;
 int vdev_raidz_map_alloc (TYPE_1__*,int ,int,int) ;
 int vdev_raidz_map_free (int ) ;
 TYPE_1__ zio_bench ;

__attribute__((used)) static inline void
run_gen_bench_impl(const char *impl)
{
 int fn, ncols;
 uint64_t ds, iter_cnt, iter, disksize;
 hrtime_t start;
 double elapsed, d_bw;


 for (fn = 0; fn < RAIDZ_GEN_NUM; fn++) {

  for (ds = MIN_CS_SHIFT; ds <= MAX_CS_SHIFT; ds++) {

   ncols = rto_opts.rto_dcols + fn + 1;
   zio_bench.io_size = 1ULL << ds;
   rm_bench = vdev_raidz_map_alloc(&zio_bench,
       BENCH_ASHIFT, ncols, fn+1);


   iter_cnt = GEN_BENCH_MEMORY;
   iter_cnt /= zio_bench.io_size;

   start = gethrtime();
   for (iter = 0; iter < iter_cnt; iter++)
    vdev_raidz_generate_parity(rm_bench);
   elapsed = NSEC2SEC((double)(gethrtime() - start));

   disksize = (1ULL << ds) / rto_opts.rto_dcols;
   d_bw = (double)iter_cnt * (double)disksize;
   d_bw /= (1024.0 * 1024.0 * elapsed);

   LOG(D_ALL, "%10s, %8s, %zu, %10llu, %lf, %lf, %u\n",
       impl,
       raidz_gen_name[fn],
       rto_opts.rto_dcols,
       (1ULL<<ds),
       d_bw,
       d_bw * (double)(ncols),
       (unsigned)iter_cnt);

   vdev_raidz_map_free(rm_bench);
  }
 }
}
