#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decompressedData ;
typedef  int /*<<< orphan*/  dataToCompress ;
typedef  int /*<<< orphan*/  compressedData ;
struct TYPE_8__ {char* member_0; int member_1; size_t pos; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_9__ {char const* member_0; int member_1; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 int COMPRESSED_SIZE ; 
 int INPUT_SIZE ; 
 int MAX_TESTED_LEVEL ; 
 size_t const FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,unsigned int) ; 
 size_t const FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 size_t const FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/  ZSTD_c_windowLog ; 
 size_t const FUNC5 (int /*<<< orphan*/ * const,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  ZSTD_d_windowLogMax ; 
 size_t FUNC9 (int /*<<< orphan*/ * const,TYPE_1__*,TYPE_2__*) ; 
 size_t FUNC10 (int /*<<< orphan*/ * const,TYPE_1__*) ; 
 size_t FUNC11 (int /*<<< orphan*/ * const) ; 
 size_t FUNC12 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ * const) ; 
 size_t FUNC16 (int /*<<< orphan*/ * const) ; 
 size_t FUNC17 (int /*<<< orphan*/ * const) ; 
 char* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 unsigned int FUNC20 (char const**) ; 

int FUNC21(int argc, char const *argv[]) {

    FUNC19("\n Zstandard (v%s) memory usage for streaming : \n\n", FUNC18());

    unsigned wLog = 0;
    if (argc > 1) {
        const char* valStr = argv[1];
        wLog = FUNC20(&valStr);
    }

    int compressionLevel;
    for (compressionLevel = 1; compressionLevel <= MAX_TESTED_LEVEL; compressionLevel++) {
#define INPUT_SIZE 5
#define COMPRESSED_SIZE 128
        char const dataToCompress[INPUT_SIZE] = "abcde";
        char compressedData[COMPRESSED_SIZE];
        char decompressedData[INPUT_SIZE];
        /* the ZSTD_CCtx_params structure is a way to save parameters and use
         * them across multiple contexts. We use them here so we can call the
         * function ZSTD_estimateCStreamSize_usingCCtxParams().
         */
        ZSTD_CCtx_params* const cctxParams = FUNC7();
        FUNC0(cctxParams != NULL, "ZSTD_createCCtxParams() failed!");

        /* Set the compression level. */
        FUNC1( FUNC2(cctxParams, ZSTD_c_compressionLevel, compressionLevel) );
        /* Set the window log.
         * The value 0 means use the default window log, which is equivalent to
         * not setting it.
         */
        FUNC1( FUNC2(cctxParams, ZSTD_c_windowLog, wLog) );

        /* Force the compressor to allocate the maximum memory size for a given
         * level by not providing the pledged source size, or calling
         * ZSTD_compressStream2() with ZSTD_e_end.
         */
        ZSTD_CCtx* const cctx = FUNC6();
        FUNC0(cctx != NULL, "ZSTD_createCCtx() failed!");
        FUNC1( FUNC3(cctx, cctxParams) );
        size_t compressedSize;
        {
            ZSTD_inBuffer inBuff = { dataToCompress, sizeof(dataToCompress), 0 };
            ZSTD_outBuffer outBuff = { compressedData, sizeof(compressedData), 0 };
            FUNC1( FUNC5(cctx, &outBuff, &inBuff) );
            size_t const remaining = FUNC10(cctx, &outBuff);
            FUNC1(remaining);
            FUNC0(remaining == 0, "Frame not flushed!");
            compressedSize = outBuff.pos;
        }

        ZSTD_DCtx* const dctx = FUNC8();
        FUNC0(dctx != NULL, "ZSTD_createDCtx() failed!");
        /* Set the maximum allowed window log.
         * The value 0 means use the default window log, which is equivalent to
         * not setting it.
         */
        FUNC1( FUNC4(dctx, ZSTD_d_windowLogMax, wLog) );
        /* forces decompressor to use maximum memory size, since the
         * decompressed size is not stored in the frame header.
         */
        {   ZSTD_inBuffer inBuff = { compressedData, compressedSize, 0 };
            ZSTD_outBuffer outBuff = { decompressedData, sizeof(decompressedData), 0 };
            size_t const remaining = FUNC9(dctx, &outBuff, &inBuff);
            FUNC1(remaining);
            FUNC0(remaining == 0, "Frame not complete!");
            FUNC0(outBuff.pos == sizeof(dataToCompress), "Bad decompression!");
        }

        size_t const cstreamSize = FUNC16(cctx);
        size_t const cstreamEstimatedSize = FUNC11(cctxParams);
        size_t const dstreamSize = FUNC17(dctx);
        size_t const dstreamEstimatedSize = FUNC12(compressedData, compressedSize);

        FUNC0(cstreamSize <= cstreamEstimatedSize, "Compression mem (%u) > estimated (%u)",
                (unsigned)cstreamSize, (unsigned)cstreamEstimatedSize);
        FUNC0(dstreamSize <= dstreamEstimatedSize, "Decompression mem (%u) > estimated (%u)",
                (unsigned)dstreamSize, (unsigned)dstreamEstimatedSize);

        FUNC19("Level %2i : Compression Mem = %5u KB (estimated : %5u KB) ; Decompression Mem = %4u KB (estimated : %5u KB)\n",
                compressionLevel,
                (unsigned)(cstreamSize>>10), (unsigned)(cstreamEstimatedSize>>10),
                (unsigned)(dstreamSize>>10), (unsigned)(dstreamEstimatedSize>>10));

        FUNC15(dctx);
        FUNC13(cctx);
        FUNC14(cctxParams);
        if (wLog) break;  /* single test */
    }
    return 0;
}