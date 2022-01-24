#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* io_abd; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_offset; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_16__ {int const rto_dcols; TYPE_1__* rm_golden; TYPE_1__* zio_golden; int /*<<< orphan*/  rto_ashift; int /*<<< orphan*/  rto_dsize; int /*<<< orphan*/  rto_offset; } ;
typedef  TYPE_2__ raidz_test_opts_t ;
typedef  TYPE_1__ raidz_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int const) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,size_t const,int const) ; 

__attribute__((used)) static int
FUNC12(raidz_test_opts_t *opts, const int parity)
{
	int err = 0;
	zio_t *zio_test;
	raidz_map_t *rm_test;
	const size_t total_ncols = opts->rto_dcols + parity;

	if (opts->rm_golden) {
		FUNC5(&opts->zio_golden, &opts->rm_golden);
	}

	opts->zio_golden = FUNC8(sizeof (zio_t), UMEM_NOFAIL);
	zio_test = FUNC8(sizeof (zio_t), UMEM_NOFAIL);

	opts->zio_golden->io_offset = zio_test->io_offset = opts->rto_offset;
	opts->zio_golden->io_size = zio_test->io_size = opts->rto_dsize;

	opts->zio_golden->io_abd = FUNC7(opts->rto_dsize);
	zio_test->io_abd = FUNC7(opts->rto_dsize);

	FUNC6(opts->zio_golden);
	FUNC6(zio_test);

	FUNC2(FUNC10("original"));

	opts->rm_golden = FUNC11(opts->zio_golden,
	    opts->rto_ashift, total_ncols, parity);
	rm_test = FUNC11(zio_test,
	    opts->rto_ashift, total_ncols, parity);

	FUNC1(opts->zio_golden);
	FUNC1(opts->rm_golden);

	FUNC9(opts->rm_golden);
	FUNC9(rm_test);

	/* sanity check */
	err |= FUNC4(opts, rm_test);
	err |= FUNC3(opts, rm_test, parity);

	if (err)
		FUNC0("initializing the golden copy ... [FAIL]!\n");

	/* tear down raidz_map of test zio */
	FUNC5(&zio_test, &rm_test);

	return (err);
}