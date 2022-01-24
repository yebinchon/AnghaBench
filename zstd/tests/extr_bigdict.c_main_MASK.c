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
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t const,double,double,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int ZSTD_btopt ; 
 int /*<<< orphan*/  ZSTD_c_chainLog ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 int /*<<< orphan*/  ZSTD_c_hashLog ; 
 int /*<<< orphan*/  ZSTD_c_minMatch ; 
 int /*<<< orphan*/  ZSTD_c_nbWorkers ; 
 int /*<<< orphan*/  ZSTD_c_overlapLog ; 
 int /*<<< orphan*/  ZSTD_c_searchLog ; 
 int /*<<< orphan*/  ZSTD_c_strategy ; 
 int /*<<< orphan*/  ZSTD_c_targetLength ; 
 int /*<<< orphan*/  ZSTD_c_windowLog ; 
 size_t FUNC3 (size_t const) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  ZSTD_d_windowLogMax ; 
 int /*<<< orphan*/  ZSTD_e_continue ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t const,char*,size_t const,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 void* FUNC12 (size_t const) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(int argc, const char** argv)
{
    ZSTD_CCtx* cctx = FUNC4();
    ZSTD_DCtx* dctx = FUNC5();
    const size_t dataSize = (size_t)1 << 30;
    const size_t outSize = FUNC3(dataSize);
    const size_t bufferSize = (size_t)1 << 31;
    char* buffer = (char*)FUNC12(bufferSize);
    void* out = FUNC12(outSize);
    void* roundtrip = FUNC12(dataSize);
    (void)argc;
    (void)argv;

    if (!buffer || !out || !roundtrip || !cctx || !dctx) {
        FUNC10(stderr, "Allocation failure\n");
        return 1;
    }

    if (FUNC8(FUNC1(cctx, ZSTD_c_windowLog, 31)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_nbWorkers, 1)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_overlapLog, 9)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_checksumFlag, 1)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_strategy, ZSTD_btopt)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_targetLength, 7)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_minMatch, 7)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_searchLog, 1)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_hashLog, 10)))
        return 1;
    if (FUNC8(FUNC1(cctx, ZSTD_c_chainLog, 10)))
        return 1;

    if (FUNC8(FUNC2(dctx, ZSTD_d_windowLogMax, 31)))
        return 1;

    FUNC0(buffer, bufferSize, 1.0, 0.0, 0xbeefcafe);

    /* Compress 30 GB */
    {
        int i;
        for (i = 0; i < 10; ++i) {
            FUNC10(stderr, "Compressing 1 GB\n");
            if (FUNC9(cctx, dctx, out, outSize, buffer, dataSize, roundtrip, ZSTD_e_continue))
                return 1;
        }
    }
    FUNC10(stderr, "Compressing 1 GB\n");
    if (FUNC9(cctx, dctx, out, outSize, buffer, dataSize, roundtrip, ZSTD_e_end))
        return 1;

    FUNC10(stderr, "Success!\n");

    FUNC11(roundtrip);
    FUNC11(out);
    FUNC11(buffer);
    FUNC7(dctx);
    FUNC6(cctx);
    return 0;
}