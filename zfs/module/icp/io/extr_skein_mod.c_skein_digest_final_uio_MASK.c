#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ uio_segflg; size_t uio_iovcnt; TYPE_1__* uio_iov; } ;
typedef  TYPE_2__ uio_t ;
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uchar_t ;
struct TYPE_10__ {int /*<<< orphan*/  sc_digest_bitlen; } ;
typedef  TYPE_3__ skein_ctx_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  crypto_req_handle_t ;
struct TYPE_11__ {scalar_t__ cd_offset; TYPE_2__* cd_uio; } ;
typedef  TYPE_4__ crypto_data_t ;
struct TYPE_8__ {scalar_t__ iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 int CRYPTO_ARGUMENTS_BAD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int CRYPTO_DATA_LEN_RANGE ; 
 int CRYPTO_HOST_MEMORY ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  Final ; 
 size_t FUNC1 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC7(skein_ctx_t *ctx, crypto_data_t *digest,
    crypto_req_handle_t req)
{
	off_t	offset = digest->cd_offset;
	uint_t	vec_idx = 0;
	uio_t	*uio = digest->cd_uio;

	/* we support only kernel buffer */
	if (uio->uio_segflg != UIO_SYSSPACE)
		return (CRYPTO_ARGUMENTS_BAD);

	/*
	 * Jump to the first iovec containing ptr to the digest to be returned.
	 */
	while (vec_idx < uio->uio_iovcnt &&
	    offset >= uio->uio_iov[vec_idx].iov_len) {
		offset -= uio->uio_iov[vec_idx].iov_len;
		vec_idx++;
	}
	if (vec_idx == uio->uio_iovcnt) {
		/*
		 * The caller specified an offset that is larger than the
		 * total size of the buffers it provided.
		 */
		return (CRYPTO_DATA_LEN_RANGE);
	}
	if (offset + FUNC0(ctx->sc_digest_bitlen) <=
	    uio->uio_iov[vec_idx].iov_len) {
		/* The computed digest will fit in the current iovec. */
		FUNC2(ctx, Final,
		    (uchar_t *)uio->uio_iov[vec_idx].iov_base + offset);
	} else {
		uint8_t *digest_tmp;
		off_t scratch_offset = 0;
		size_t length = FUNC0(ctx->sc_digest_bitlen);
		size_t cur_len;

		digest_tmp = FUNC5(FUNC0(
		    ctx->sc_digest_bitlen), FUNC4(req));
		if (digest_tmp == NULL)
			return (CRYPTO_HOST_MEMORY);
		FUNC2(ctx, Final, digest_tmp);
		while (vec_idx < uio->uio_iovcnt && length > 0) {
			cur_len = FUNC1(uio->uio_iov[vec_idx].iov_len - offset,
			    length);
			FUNC3(digest_tmp + scratch_offset,
			    uio->uio_iov[vec_idx].iov_base + offset, cur_len);

			length -= cur_len;
			vec_idx++;
			scratch_offset += cur_len;
			offset = 0;
		}
		FUNC6(digest_tmp, FUNC0(ctx->sc_digest_bitlen));

		if (vec_idx == uio->uio_iovcnt && length > 0) {
			/*
			 * The end of the specified iovec's was reached but
			 * the length requested could not be processed, i.e.
			 * The caller requested to digest more data than it
			 * provided.
			 */
			return (CRYPTO_DATA_LEN_RANGE);
		}
	}

	return (CRYPTO_SUCCESS);
}