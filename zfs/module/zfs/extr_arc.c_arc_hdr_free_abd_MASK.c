#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {int /*<<< orphan*/  b_byteswap; int /*<<< orphan*/ * b_pabd; } ;
struct TYPE_14__ {int /*<<< orphan*/ * b_rabd; } ;
struct TYPE_16__ {TYPE_2__ b_l1hdr; TYPE_1__ b_crypt_hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DMU_BSWAP_NUMFUNCS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  arcstat_compressed_size ; 
 int /*<<< orphan*/  arcstat_l2_free_on_write ; 
 int /*<<< orphan*/  arcstat_raw_size ; 
 int /*<<< orphan*/  arcstat_uncompressed_size ; 

__attribute__((used)) static void
FUNC12(arc_buf_hdr_t *hdr, boolean_t free_rdata)
{
	uint64_t size = (free_rdata) ? FUNC4(hdr) : FUNC11(hdr);

	FUNC2(FUNC5(hdr));
	FUNC2(hdr->b_l1hdr.b_pabd != NULL || FUNC6(hdr));
	FUNC8(free_rdata, FUNC6(hdr));

	/*
	 * If the hdr is currently being written to the l2arc then
	 * we defer freeing the data by adding it to the l2arc_free_on_write
	 * list. The l2arc will free the data once it's finished
	 * writing it to the l2arc device.
	 */
	if (FUNC7(hdr)) {
		FUNC10(hdr, free_rdata);
		FUNC0(arcstat_l2_free_on_write);
	} else if (free_rdata) {
		FUNC9(hdr, hdr->b_crypt_hdr.b_rabd, size, hdr);
	} else {
		FUNC9(hdr, hdr->b_l1hdr.b_pabd, size, hdr);
	}

	if (free_rdata) {
		hdr->b_crypt_hdr.b_rabd = NULL;
		FUNC1(arcstat_raw_size, -size);
	} else {
		hdr->b_l1hdr.b_pabd = NULL;
	}

	if (hdr->b_l1hdr.b_pabd == NULL && !FUNC6(hdr))
		hdr->b_l1hdr.b_byteswap = DMU_BSWAP_NUMFUNCS;

	FUNC1(arcstat_compressed_size, -size);
	FUNC1(arcstat_uncompressed_size, -FUNC3(hdr));
}