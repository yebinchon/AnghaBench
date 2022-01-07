
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


 unsigned long long BENCH_ASHIFT ;
 int D_ALL ;
 int LOG (int ,char*,char const*,int ,unsigned long long,unsigned long long,double,double,unsigned int) ;
 unsigned long long MAX_CS_SHIFT ;
 int MIN (int,scalar_t__) ;
 unsigned long long MIN_CS_SHIFT ;
 double NSEC2SEC (double) ;
 int PARITY_PQR ;
 int RAIDZ_REC_NUM ;
 unsigned long long REC_BENCH_MEMORY ;
 scalar_t__ gethrtime () ;
 scalar_t__ raidz_ncols (int ) ;
 scalar_t__ raidz_parity (int ) ;
 int * raidz_rec_name ;
 int rm_bench ;
 TYPE_3__ rto_opts ;
 int vdev_raidz_map_alloc (TYPE_1__*,unsigned long long,int,int) ;
 int vdev_raidz_map_free (int ) ;
 int vdev_raidz_reconstruct (int ,int const*,int) ;
 TYPE_1__ zio_bench ;

__attribute__((used)) static void
run_rec_bench_impl(const char *impl)
{
 int fn, ncols, nbad;
 uint64_t ds, iter_cnt, iter, disksize;
 hrtime_t start;
 double elapsed, d_bw;
 static const int tgt[7][3] = {
  {1, 2, 3},
  {0, 2, 3},
  {0, 1, 3},
  {2, 3, 4},
  {1, 3, 4},
  {0, 3, 4},
  {3, 4, 5}
 };

 for (fn = 0; fn < RAIDZ_REC_NUM; fn++) {
  for (ds = MIN_CS_SHIFT; ds <= MAX_CS_SHIFT; ds++) {


   ncols = rto_opts.rto_dcols + PARITY_PQR;
   zio_bench.io_size = 1ULL << ds;





   if (zio_bench.io_size / rto_opts.rto_dcols <
       (1ULL << BENCH_ASHIFT))
    continue;

   rm_bench = vdev_raidz_map_alloc(&zio_bench,
       BENCH_ASHIFT, ncols, PARITY_PQR);


   iter_cnt = (REC_BENCH_MEMORY);
   iter_cnt /= zio_bench.io_size;


   nbad = MIN(3, raidz_ncols(rm_bench) -
       raidz_parity(rm_bench));

   start = gethrtime();
   for (iter = 0; iter < iter_cnt; iter++)
    vdev_raidz_reconstruct(rm_bench, tgt[fn], nbad);
   elapsed = NSEC2SEC((double)(gethrtime() - start));

   disksize = (1ULL << ds) / rto_opts.rto_dcols;
   d_bw = (double)iter_cnt * (double)(disksize);
   d_bw /= (1024.0 * 1024.0 * elapsed);

   LOG(D_ALL, "%10s, %8s, %zu, %10llu, %lf, %lf, %u\n",
       impl,
       raidz_rec_name[fn],
       rto_opts.rto_dcols,
       (1ULL<<ds),
       d_bw,
       d_bw * (double)ncols,
       (unsigned)iter_cnt);

   vdev_raidz_map_free(rm_bench);
  }
 }
}
