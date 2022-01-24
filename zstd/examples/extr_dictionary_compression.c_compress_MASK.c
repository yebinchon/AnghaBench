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
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ * const,void* const,size_t const,void* const,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC6 (void* const) ; 
 void* FUNC7 (char const*,size_t*) ; 
 void* FUNC8 (size_t const) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,unsigned int,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,void* const,size_t const) ; 

__attribute__((used)) static void FUNC11(const char* fname, const char* oname, const ZSTD_CDict* cdict)
{
    size_t fSize;
    void* const fBuff = FUNC7(fname, &fSize);
    size_t const cBuffSize = FUNC2(fSize);
    void* const cBuff = FUNC8(cBuffSize);

    /* Compress using the dictionary.
     * This function writes the dictionary id, and content size into the header.
     * But, it doesn't use a checksum. You can control these options using the
     * advanced API: ZSTD_CCtx_setParameter(), ZSTD_CCtx_refCDict(),
     * and ZSTD_compress2().
     */
    ZSTD_CCtx* const cctx = FUNC4();
    FUNC0(cctx != NULL, "ZSTD_createCCtx() failed!");
    size_t const cSize = FUNC3(cctx, cBuff, cBuffSize, fBuff, fSize, cdict);
    FUNC1(cSize);

    FUNC10(oname, cBuff, cSize);

    /* success */
    FUNC9("%25s : %6u -> %7u - %s \n", fname, (unsigned)fSize, (unsigned)cSize, oname);

    FUNC5(cctx);   /* never fails */
    FUNC6(fBuff);
    FUNC6(cBuff);
}