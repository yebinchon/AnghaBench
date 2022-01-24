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
typedef  int /*<<< orphan*/  ZSTD_DDict ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int U32 ;
typedef  void BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int ZSTD_MAGICNUMBER ; 
 int ZSTD_MAGIC_SKIPPABLE_START ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,void*,size_t,void const**,size_t*) ; 
 size_t ZSTD_frameHeaderSize_prefix ; 
 scalar_t__ FUNC7 (size_t const) ; 
 size_t FUNC8 (void const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t ZSTD_skippableHeaderSize ; 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC10(ZSTD_DCtx *dctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize, const void *dict, size_t dictSize,
					const ZSTD_DDict *ddict)
{
	void *const dststart = dst;

	if (ddict) {
		if (dict) {
			/* programmer error, these two cases should be mutually exclusive */
			return FUNC1(GENERIC);
		}

		dict = FUNC2(ddict);
		dictSize = FUNC3(ddict);
	}

	while (srcSize >= ZSTD_frameHeaderSize_prefix) {
		U32 magicNumber;

		magicNumber = FUNC8(src);
		if (magicNumber != ZSTD_MAGICNUMBER) {
			if ((magicNumber & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
				size_t skippableSize;
				if (srcSize < ZSTD_skippableHeaderSize)
					return FUNC1(srcSize_wrong);
				skippableSize = FUNC8((const BYTE *)src + 4) + ZSTD_skippableHeaderSize;
				if (srcSize < skippableSize) {
					return FUNC1(srcSize_wrong);
				}

				src = (const BYTE *)src + skippableSize;
				srcSize -= skippableSize;
				continue;
			} else {
				return FUNC1(prefix_unknown);
			}
		}

		if (ddict) {
			/* we were called from ZSTD_decompress_usingDDict */
			FUNC9(dctx, ddict);
		} else {
			/* this will initialize correctly with no dict if dict == NULL, so
			 * use this in all cases but ddict */
			FUNC0(FUNC5(dctx, dict, dictSize));
		}
		FUNC4(dctx, dst);

		{
			const size_t res = FUNC6(dctx, dst, dstCapacity, &src, &srcSize);
			if (FUNC7(res))
				return res;
			/* don't need to bounds check this, ZSTD_decompressFrame will have
			 * already */
			dst = (BYTE *)dst + res;
			dstCapacity -= res;
		}
	}

	if (srcSize)
		return FUNC1(srcSize_wrong); /* input not entirely consumed */

	return (BYTE *)dst - (BYTE *)dststart;
}