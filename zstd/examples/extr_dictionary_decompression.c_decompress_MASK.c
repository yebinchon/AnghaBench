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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ; 
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/ * const,void* const,unsigned long long const,void* const,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 unsigned int FUNC5 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC6 (void* const,size_t) ; 
 unsigned long long FUNC7 (void* const,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void* const) ; 
 void* FUNC9 (char const*,size_t*) ; 
 void* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC12(const char* fname, const ZSTD_DDict* ddict)
{
    size_t cSize;
    void* const cBuff = FUNC9(fname, &cSize);
    /* Read the content size from the frame header. For simplicity we require
     * that it is always present. By default, zstd will write the content size
     * in the header when it is known. If you can't guarantee that the frame
     * content size is always written into the header, either use streaming
     * decompression, or ZSTD_decompressBound().
     */
    unsigned long long const rSize = FUNC7(cBuff, cSize);
    FUNC0(rSize != ZSTD_CONTENTSIZE_ERROR, "%s: not compressed by zstd!", fname);
    FUNC0(rSize != ZSTD_CONTENTSIZE_UNKNOWN, "%s: original size unknown!", fname);
    void* const rBuff = FUNC10((size_t)rSize);

    /* Check that the dictionary ID matches.
     * If a non-zstd dictionary is used, then both will be zero.
     * By default zstd always writes the dictionary ID into the frame.
     * Zstd will check if there is a dictionary ID mismatch as well.
     */
    unsigned const expectedDictID = FUNC5(ddict);
    unsigned const actualDictID = FUNC6(cBuff, cSize);
    FUNC0(actualDictID == expectedDictID,
          "DictID mismatch: expected %u got %u",
          expectedDictID,
          actualDictID);

    /* Decompress using the dictionary.
     * If you need to control the decompression parameters, then use the
     * advanced API: ZSTD_DCtx_setParameter(), ZSTD_DCtx_refDDict(), and
     * ZSTD_decompressDCtx().
     */
    ZSTD_DCtx* const dctx = FUNC2();
    FUNC0(dctx != NULL, "ZSTD_createDCtx() failed!");
    size_t const dSize = FUNC3(dctx, rBuff, rSize, cBuff, cSize, ddict);
    FUNC1(dSize);
    /* When zstd knows the content size, it will error if it doesn't match. */
    FUNC0(dSize == rSize, "Impossible because zstd will check this condition!");

    /* success */
    FUNC11("%25s : %6u -> %7u \n", fname, (unsigned)cSize, (unsigned)rSize);

    FUNC4(dctx);
    FUNC8(rBuff);
    FUNC8(cBuff);
}