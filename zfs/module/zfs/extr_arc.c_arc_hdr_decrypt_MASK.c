#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int boolean_t ;
struct TYPE_21__ {scalar_t__ b_byteswap; int /*<<< orphan*/ * b_pabd; } ;
struct TYPE_20__ {int /*<<< orphan*/  b_rabd; int /*<<< orphan*/  b_mac; int /*<<< orphan*/  b_iv; int /*<<< orphan*/  b_salt; int /*<<< orphan*/  b_ot; } ;
struct TYPE_22__ {TYPE_2__ b_l1hdr; TYPE_1__ b_crypt_hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int B_FALSE ; 
 scalar_t__ DMU_BSWAP_NUMFUNCS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ ZIO_COMPRESS_OFF ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC18 (scalar_t__,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(arc_buf_hdr_t *hdr, spa_t *spa, const zbookmark_phys_t *zb)
{
	int ret;
	abd_t *cabd = NULL;
	void *tmp = NULL;
	boolean_t no_crypt = B_FALSE;
	boolean_t bswap = (hdr->b_l1hdr.b_byteswap != DMU_BSWAP_NUMFUNCS);

	FUNC0(FUNC2(hdr));
	FUNC0(FUNC3(hdr));

	FUNC14(hdr, B_FALSE);

	ret = FUNC17(B_FALSE, spa, zb, hdr->b_crypt_hdr.b_ot,
	    B_FALSE, bswap, hdr->b_crypt_hdr.b_salt, hdr->b_crypt_hdr.b_iv,
	    hdr->b_crypt_hdr.b_mac, FUNC6(hdr), hdr->b_l1hdr.b_pabd,
	    hdr->b_crypt_hdr.b_rabd, &no_crypt);
	if (ret != 0)
		goto error;

	if (no_crypt) {
		FUNC8(hdr->b_l1hdr.b_pabd, hdr->b_crypt_hdr.b_rabd,
		    FUNC6(hdr));
	}

	/*
	 * If this header has disabled arc compression but the b_pabd is
	 * compressed after decrypting it, we need to decompress the newly
	 * decrypted data.
	 */
	if (FUNC4(hdr) != ZIO_COMPRESS_OFF &&
	    !FUNC1(hdr)) {
		/*
		 * We want to make sure that we are correctly honoring the
		 * zfs_abd_scatter_enabled setting, so we allocate an abd here
		 * and then loan a buffer from it, rather than allocating a
		 * linear buffer and wrapping it in an abd later.
		 */
		cabd = FUNC13(hdr, FUNC16(hdr), hdr);
		tmp = FUNC7(cabd, FUNC16(hdr));

		ret = FUNC18(FUNC4(hdr),
		    hdr->b_l1hdr.b_pabd, tmp, FUNC6(hdr),
		    FUNC5(hdr));
		if (ret != 0) {
			FUNC9(cabd, tmp, FUNC16(hdr));
			goto error;
		}

		FUNC10(cabd, tmp, FUNC16(hdr));
		FUNC11(hdr, hdr->b_l1hdr.b_pabd,
		    FUNC16(hdr), hdr);
		hdr->b_l1hdr.b_pabd = cabd;
	}

	return (0);

error:
	FUNC15(hdr, B_FALSE);
	if (cabd != NULL)
		FUNC12(hdr, cabd, FUNC16(hdr), hdr);

	return (ret);
}