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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ; 
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ; 
 size_t FUNC2 (void* const,unsigned long long const,void* const,size_t) ; 
 unsigned long long FUNC3 (void* const,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void* const) ; 
 void* FUNC5 (char const*,size_t*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC8(const char* fname)
{
    size_t cSize;
    void* const cBuff = FUNC5(fname, &cSize);
    /* Read the content size from the frame header. For simplicity we require
     * that it is always present. By default, zstd will write the content size
     * in the header when it is known. If you can't guarantee that the frame
     * content size is always written into the header, either use streaming
     * decompression, or ZSTD_decompressBound().
     */
    unsigned long long const rSize = FUNC3(cBuff, cSize);
    FUNC0(rSize != ZSTD_CONTENTSIZE_ERROR, "%s: not compressed by zstd!", fname);
    FUNC0(rSize != ZSTD_CONTENTSIZE_UNKNOWN, "%s: original size unknown!", fname);

    void* const rBuff = FUNC6((size_t)rSize);

    /* Decompress.
     * If you are doing many decompressions, you may want to reuse the context
     * and use ZSTD_decompressDCtx(). If you want to set advanced parameters,
     * use ZSTD_DCtx_setParameter().
     */
    size_t const dSize = FUNC2(rBuff, rSize, cBuff, cSize);
    FUNC1(dSize);
    /* When zstd knows the content size, it will error if it doesn't match. */
    FUNC0(dSize == rSize, "Impossible because zstd will check this condition!");

    /* success */
    FUNC7("%25s : %6u -> %7u \n", fname, (unsigned)cSize, (unsigned)rSize);

    FUNC4(rBuff);
    FUNC4(cBuff);
}