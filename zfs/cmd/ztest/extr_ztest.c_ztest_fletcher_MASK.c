#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  zc_byteswap ;
typedef  int /*<<< orphan*/  zc ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct abd {int dummy; } ;
typedef  scalar_t__ hrtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ NANOSEC ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct abd* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct abd*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct abd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct abd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct abd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 () ; 

void
FUNC15(ztest_ds_t *zd, uint64_t id)
{
	hrtime_t end = FUNC10() + NANOSEC;

	while (FUNC10() <= end) {
		int run_count = 100;
		void *buf;
		struct abd *abd_data, *abd_meta;
		uint32_t size;
		int *ptr;
		int i;
		zio_cksum_t zc_ref;
		zio_cksum_t zc_ref_byteswap;

		size = FUNC14();

		buf = FUNC11(size, UMEM_NOFAIL);
		abd_data = FUNC1(size, B_FALSE);
		abd_meta = FUNC1(size, B_TRUE);

		for (i = 0, ptr = buf; i < size / sizeof (*ptr); i++, ptr++)
			*ptr = FUNC13(UINT_MAX);

		FUNC2(abd_data, buf, 0, size);
		FUNC2(abd_meta, buf, 0, size);

		FUNC0(FUNC8("scalar"));
		FUNC9(buf, size, NULL, &zc_ref);
		FUNC7(buf, size, NULL, &zc_ref_byteswap);

		FUNC0(FUNC8("cycle"));
		while (run_count-- > 0) {
			zio_cksum_t zc;
			zio_cksum_t zc_byteswap;

			FUNC7(buf, size, NULL, &zc_byteswap);
			FUNC9(buf, size, NULL, &zc);

			FUNC0(FUNC6(&zc, &zc_ref, sizeof (zc)));
			FUNC0(FUNC6(&zc_byteswap, &zc_ref_byteswap,
			    sizeof (zc_byteswap)));

			/* Test ABD - data */
			FUNC3(abd_data, size, NULL,
			    &zc_byteswap);
			FUNC4(abd_data, size, NULL, &zc);

			FUNC0(FUNC6(&zc, &zc_ref, sizeof (zc)));
			FUNC0(FUNC6(&zc_byteswap, &zc_ref_byteswap,
			    sizeof (zc_byteswap)));

			/* Test ABD - metadata */
			FUNC3(abd_meta, size, NULL,
			    &zc_byteswap);
			FUNC4(abd_meta, size, NULL, &zc);

			FUNC0(FUNC6(&zc, &zc_ref, sizeof (zc)));
			FUNC0(FUNC6(&zc_byteswap, &zc_ref_byteswap,
			    sizeof (zc_byteswap)));

		}

		FUNC12(buf, size);
		FUNC5(abd_data);
		FUNC5(abd_meta);
	}
}