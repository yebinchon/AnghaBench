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
struct receive_writer_arg {int byteswap; int /*<<< orphan*/  os; int /*<<< orphan*/  max_object; scalar_t__ raw; } ;
struct drr_write_embedded {scalar_t__ drr_psize; scalar_t__ drr_etype; scalar_t__ drr_compression; scalar_t__ drr_offset; int /*<<< orphan*/  drr_object; int /*<<< orphan*/  drr_lsize; scalar_t__ drr_length; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 scalar_t__ BPE_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ NUM_BP_EMBEDDED_TYPES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int ZFS_HOST_BYTEORDER ; 
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct receive_writer_arg*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct receive_writer_arg *rwa,
    struct drr_write_embedded *drrwe, void *data)
{
	dmu_tx_t *tx;
	int err;

	if (drrwe->drr_offset + drrwe->drr_length < drrwe->drr_offset)
		return (FUNC0(EINVAL));

	if (drrwe->drr_psize > BPE_PAYLOAD_SIZE)
		return (FUNC0(EINVAL));

	if (drrwe->drr_etype >= NUM_BP_EMBEDDED_TYPES)
		return (FUNC0(EINVAL));
	if (drrwe->drr_compression >= ZIO_COMPRESS_FUNCTIONS)
		return (FUNC0(EINVAL));
	if (rwa->raw)
		return (FUNC0(EINVAL));

	if (drrwe->drr_object > rwa->max_object)
		rwa->max_object = drrwe->drr_object;

	tx = FUNC4(rwa->os);

	FUNC5(tx, drrwe->drr_object,
	    drrwe->drr_offset, drrwe->drr_length);
	err = FUNC2(tx, TXG_WAIT);
	if (err != 0) {
		FUNC1(tx);
		return (err);
	}

	FUNC6(rwa->os, drrwe->drr_object,
	    drrwe->drr_offset, data, drrwe->drr_etype,
	    drrwe->drr_compression, drrwe->drr_lsize, drrwe->drr_psize,
	    rwa->byteswap ^ ZFS_HOST_BYTEORDER, tx);

	/* See comment in restore_write. */
	FUNC7(rwa, drrwe->drr_object, drrwe->drr_offset, tx);
	FUNC3(tx);
	return (0);
}