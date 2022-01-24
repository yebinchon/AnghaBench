#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  blk_prop; } ;
typedef  TYPE_1__ blkptr_t ;
struct TYPE_12__ {unsigned long long bab_pad; int /*<<< orphan*/  bab_prop; int /*<<< orphan*/  bab_mac; } ;
typedef  TYPE_2__ blkptr_auth_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(uint64_t version, boolean_t should_bswap, blkptr_t *bp,
    blkptr_auth_buf_t *bab, uint_t *bab_len)
{
	blkptr_t tmpbp = *bp;

	if (should_bswap)
		FUNC6(&tmpbp, sizeof (blkptr_t));

	FUNC0(FUNC4(&tmpbp) || FUNC3(&tmpbp));
	FUNC1(FUNC2(&tmpbp));

	FUNC8(&tmpbp, bab->bab_mac);

	/*
	 * We always MAC blk_prop in LE to ensure portability. This
	 * must be done after decoding the mac, since the endianness
	 * will get zero'd out here.
	 */
	FUNC7(&tmpbp, version);
	bab->bab_prop = FUNC5(tmpbp.blk_prop);
	bab->bab_pad = 0ULL;

	/* version 0 did not include the padding */
	*bab_len = sizeof (blkptr_auth_buf_t);
	if (version == 0)
		*bab_len -= sizeof (uint64_t);
}