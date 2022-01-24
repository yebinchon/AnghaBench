#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void** zc_word; } ;
typedef  TYPE_1__ zio_cksum_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  abd_t ;
typedef  int /*<<< orphan*/  SHA2_CTX ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int CPA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SHA256 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_SHA256 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sha_incremental ; 

void
FUNC8(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
	int ret;
	SHA2_CTX ctx;
	zio_cksum_t tmp;

	if (FUNC7(size)) {
		uint8_t *buf = FUNC3(abd, size);
		ret = FUNC6(ZIO_CHECKSUM_SHA256, buf, size, &tmp);
		FUNC5(abd, buf, size);
		if (ret == CPA_STATUS_SUCCESS)
			goto bswap;

		/* If the hardware implementation fails fall back to software */
	}

	FUNC2(SHA256, &ctx);
	(void) FUNC4(abd, 0, size, sha_incremental, &ctx);
	FUNC1(&tmp, &ctx);

bswap:
	/*
	 * A prior implementation of this function had a
	 * private SHA256 implementation always wrote things out in
	 * Big Endian and there wasn't a byteswap variant of it.
	 * To preserve on disk compatibility we need to force that
	 * behavior.
	 */
	zcp->zc_word[0] = FUNC0(tmp.zc_word[0]);
	zcp->zc_word[1] = FUNC0(tmp.zc_word[1]);
	zcp->zc_word[2] = FUNC0(tmp.zc_word[2]);
	zcp->zc_word[3] = FUNC0(tmp.zc_word[3]);
}