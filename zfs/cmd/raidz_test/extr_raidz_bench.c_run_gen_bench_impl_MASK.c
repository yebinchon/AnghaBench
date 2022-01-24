#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  scalar_t__ hrtime_t ;
struct TYPE_5__ {int rto_dcols; } ;
struct TYPE_4__ {unsigned long long io_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BENCH_ASHIFT ; 
 int /*<<< orphan*/  D_ALL ; 
 unsigned long long GEN_BENCH_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,unsigned long long,unsigned long long,double,double,unsigned int) ; 
 unsigned long long MAX_CS_SHIFT ; 
 unsigned long long MIN_CS_SHIFT ; 
 double FUNC1 (double) ; 
 int RAIDZ_GEN_NUM ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * raidz_gen_name ; 
 int /*<<< orphan*/  rm_bench ; 
 TYPE_3__ rto_opts ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ zio_bench ; 

__attribute__((used)) static inline void
FUNC6(const char *impl)
{
	int fn, ncols;
	uint64_t ds, iter_cnt, iter, disksize;
	hrtime_t start;
	double elapsed, d_bw;

	/* Benchmark generate functions */
	for (fn = 0; fn < RAIDZ_GEN_NUM; fn++) {

		for (ds = MIN_CS_SHIFT; ds <= MAX_CS_SHIFT; ds++) {
			/* create suitable raidz_map */
			ncols = rto_opts.rto_dcols + fn + 1;
			zio_bench.io_size = 1ULL << ds;
			rm_bench = FUNC4(&zio_bench,
			    BENCH_ASHIFT, ncols, fn+1);

			/* estimate iteration count */
			iter_cnt = GEN_BENCH_MEMORY;
			iter_cnt /= zio_bench.io_size;

			start = FUNC2();
			for (iter = 0; iter < iter_cnt; iter++)
				FUNC3(rm_bench);
			elapsed = FUNC1((double)(FUNC2() - start));

			disksize = (1ULL << ds) / rto_opts.rto_dcols;
			d_bw = (double)iter_cnt * (double)disksize;
			d_bw /= (1024.0 * 1024.0 * elapsed);

			FUNC0(D_ALL, "%10s, %8s, %zu, %10llu, %lf, %lf, %u\n",
			    impl,
			    raidz_gen_name[fn],
			    rto_opts.rto_dcols,
			    (1ULL<<ds),
			    d_bw,
			    d_bw * (double)(ncols),
			    (unsigned)iter_cnt);

			FUNC5(rm_bench);
		}
	}
}