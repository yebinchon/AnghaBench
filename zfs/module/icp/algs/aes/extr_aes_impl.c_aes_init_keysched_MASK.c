#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int nr; int /*<<< orphan*/  type; TYPE_2__ const* ops; } ;
typedef  TYPE_1__ aes_key_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* generate ) (TYPE_1__*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  needs_byteswap; } ;
typedef  TYPE_2__ aes_impl_ops_t ;

/* Variables and functions */
 int /*<<< orphan*/  AES_32BIT_KS ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

void
FUNC6(const uint8_t *cipherKey, uint_t keyBits, void *keysched)
{
	const aes_impl_ops_t *ops = FUNC2();
	aes_key_t *newbie = keysched;
	uint_t keysize, i, j;
	union {
		uint64_t	ka64[4];
		uint32_t	ka32[8];
		} keyarr;

	switch (keyBits) {
	case 128:
		newbie->nr = 10;
		break;

	case 192:
		newbie->nr = 12;
		break;

	case 256:
		newbie->nr = 14;
		break;

	default:
		/* should never get here */
		return;
	}
	keysize = FUNC0(keyBits);

	/*
	 * Generic C implementation requires byteswap for little endian
	 * machines, various accelerated implementations for various
	 * architectures may not.
	 */
	if (!ops->needs_byteswap) {
		/* no byteswap needed */
		if (FUNC1(cipherKey, sizeof (uint64_t))) {
			for (i = 0, j = 0; j < keysize; i++, j += 8) {
				/* LINTED: pointer alignment */
				keyarr.ka64[i] = *((uint64_t *)&cipherKey[j]);
			}
		} else {
			FUNC3(cipherKey, keyarr.ka32, keysize);
		}
	} else {
		/* byte swap */
		for (i = 0, j = 0; j < keysize; i++, j += 4) {
			keyarr.ka32[i] =
			    FUNC4(*(uint32_t *)(void *)&cipherKey[j]);
		}
	}

	ops->generate(newbie, keyarr.ka32, keyBits);
	newbie->ops = ops;

	/*
	 * Note: if there are systems that need the AES_64BIT_KS type in the
	 * future, move setting key schedule type to individual implementations
	 */
	newbie->type = AES_32BIT_KS;
}