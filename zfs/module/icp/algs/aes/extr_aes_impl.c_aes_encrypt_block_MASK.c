#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * ks32; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr; TYPE_1__ encr_ks; TYPE_3__* ops; } ;
typedef  TYPE_2__ aes_key_t ;
struct TYPE_6__ {scalar_t__ needs_byteswap; int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ aes_impl_ops_t ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int CRYPTO_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(const void *ks, const uint8_t *pt, uint8_t *ct)
{
	aes_key_t	*ksch = (aes_key_t *)ks;
	const aes_impl_ops_t	*ops = ksch->ops;

	if (FUNC0(pt, ct, sizeof (uint32_t)) && !ops->needs_byteswap) {
		/* LINTED:  pointer alignment */
		ops->encrypt(&ksch->encr_ks.ks32[0], ksch->nr,
		    /* LINTED:  pointer alignment */
		    (uint32_t *)pt, (uint32_t *)ct);
	} else {
		uint32_t buffer[AES_BLOCK_LEN / sizeof (uint32_t)];

		/* Copy input block into buffer */
		if (ops->needs_byteswap) {
			buffer[0] = FUNC2(*(uint32_t *)(void *)&pt[0]);
			buffer[1] = FUNC2(*(uint32_t *)(void *)&pt[4]);
			buffer[2] = FUNC2(*(uint32_t *)(void *)&pt[8]);
			buffer[3] = FUNC2(*(uint32_t *)(void *)&pt[12]);
		} else
			FUNC1(pt, &buffer, AES_BLOCK_LEN);

		ops->encrypt(&ksch->encr_ks.ks32[0], ksch->nr, buffer, buffer);

		/* Copy result from buffer to output block */
		if (ops->needs_byteswap) {
			*(uint32_t *)(void *)&ct[0] = FUNC2(buffer[0]);
			*(uint32_t *)(void *)&ct[4] = FUNC2(buffer[1]);
			*(uint32_t *)(void *)&ct[8] = FUNC2(buffer[2]);
			*(uint32_t *)(void *)&ct[12] = FUNC2(buffer[3]);
		} else
			FUNC1(&buffer, ct, AES_BLOCK_LEN);
	}
	return (CRYPTO_SUCCESS);
}