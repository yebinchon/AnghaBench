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
struct TYPE_5__ {void* const member_0; size_t const member_1; int /*<<< orphan*/  pos; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void* const member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_EndDirective ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t const FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 () ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 size_t FUNC5 (int /*<<< orphan*/ * const,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  ZSTD_e_continue ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 size_t FUNC10 (void* const,size_t const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC11 (void* const) ; 
 int /*<<< orphan*/  FUNC12 (void* const,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 
 void* FUNC13 (size_t const) ; 

__attribute__((used)) static void FUNC14(const char* fname, const char* outName, int cLevel)
{
    /* Open the input and output files. */
    FILE* const fin  = FUNC9(fname, "rb");
    FILE* const fout = FUNC9(outName, "wb");
    /* Create the input and output buffers.
     * They may be any size, but we recommend using these functions to size them.
     * Performance will only suffer significantly for very tiny buffers.
     */
    size_t const buffInSize = FUNC3();
    void*  const buffIn  = FUNC13(buffInSize);
    size_t const buffOutSize = FUNC4();
    void*  const buffOut = FUNC13(buffOutSize);

    /* Create the context. */
    ZSTD_CCtx* const cctx = FUNC6();
    FUNC0(cctx != NULL, "ZSTD_createCCtx() failed!");

    /* Set any parameters you want.
     * Here we set the compression level, and enable the checksum.
     */
    FUNC1( FUNC2(cctx, ZSTD_c_compressionLevel, cLevel) );
    FUNC1( FUNC2(cctx, ZSTD_c_checksumFlag, 1) );

    /* This loop read from the input file, compresses that entire chunk,
     * and writes all output produced to the output file.
     */
    size_t const toRead = buffInSize;
    for (;;) {
        size_t read = FUNC10(buffIn, toRead, fin);
        /* Select the flush mode.
         * If the read may not be finished (read == toRead) we use
         * ZSTD_e_continue. If this is the last chunk, we use ZSTD_e_end.
         * Zstd optimizes the case where the first flush mode is ZSTD_e_end,
         * since it knows it is compressing the entire source in one pass.
         */
        int const lastChunk = (read < toRead);
        ZSTD_EndDirective const mode = lastChunk ? ZSTD_e_end : ZSTD_e_continue;
        /* Set the input buffer to what we just read.
         * We compress until the input buffer is empty, each time flushing the
         * output.
         */
        ZSTD_inBuffer input = { buffIn, read, 0 };
        int finished;
        do {
            /* Compress into the output buffer and write all of the output to
             * the file so we can reuse the buffer next iteration.
             */
            ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
            size_t const remaining = FUNC5(cctx, &output , &input, mode);
            FUNC1(remaining);
            FUNC12(buffOut, output.pos, fout);
            /* If we're on the last chunk we're finished when zstd returns 0,
             * which means its consumed all the input AND finished the frame.
             * Otherwise, we're finished when we've consumed all the input.
             */
            finished = lastChunk ? (remaining == 0) : (input.pos == input.size);
        } while (!finished);
        FUNC0(input.pos == input.size,
              "Impossible: zstd only returns 0 when the input is completely consumed!");

        if (lastChunk) {
            break;
        }
    }

    FUNC7(cctx);
    FUNC8(fout);
    FUNC8(fin);
    FUNC11(buffIn);
    FUNC11(buffOut);
}