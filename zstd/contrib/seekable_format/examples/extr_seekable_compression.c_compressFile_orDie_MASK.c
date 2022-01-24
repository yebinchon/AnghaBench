#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_seekable_CStream ;
struct TYPE_6__ {void* const member_0; size_t const member_1; int /*<<< orphan*/  pos; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_7__ {void* const member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 () ; 
 size_t FUNC1 () ; 
 char* FUNC2 (size_t const) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 size_t FUNC4 (int /*<<< orphan*/ * const,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 size_t FUNC6 (int /*<<< orphan*/ * const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const) ; 
 size_t FUNC8 (int /*<<< orphan*/ * const,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC13 (void* const,size_t,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC14 (void* const) ; 
 int /*<<< orphan*/  FUNC15 (void* const,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 
 void* FUNC16 (size_t const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC17(const char* fname, const char* outName, int cLevel, unsigned frameSize)
{
    FILE* const fin  = FUNC11(fname, "rb");
    FILE* const fout = FUNC11(outName, "wb");
    size_t const buffInSize = FUNC0();    /* can always read one full block */
    void*  const buffIn  = FUNC16(buffInSize);
    size_t const buffOutSize = FUNC1();  /* can always flush a full block */
    void*  const buffOut = FUNC16(buffOutSize);

    ZSTD_seekable_CStream* const cstream = FUNC5();
    if (cstream==NULL) { FUNC12(stderr, "ZSTD_seekable_createCStream() error \n"); FUNC9(10); }
    size_t const initResult = FUNC8(cstream, cLevel, 1, frameSize);
    if (FUNC3(initResult)) { FUNC12(stderr, "ZSTD_seekable_initCStream() error : %s \n", FUNC2(initResult)); FUNC9(11); }

    size_t read, toRead = buffInSize;
    while( (read = FUNC13(buffIn, toRead, fin)) ) {
        ZSTD_inBuffer input = { buffIn, read, 0 };
        while (input.pos < input.size) {
            ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
            toRead = FUNC4(cstream, &output , &input);   /* toRead is guaranteed to be <= ZSTD_CStreamInSize() */
            if (FUNC3(toRead)) { FUNC12(stderr, "ZSTD_seekable_compressStream() error : %s \n", FUNC2(toRead)); FUNC9(12); }
            if (toRead > buffInSize) toRead = buffInSize;   /* Safely handle case when `buffInSize` is manually changed to a value < ZSTD_CStreamInSize()*/
            FUNC15(buffOut, output.pos, fout);
        }
    }

    while (1) {
        ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
        size_t const remainingToFlush = FUNC6(cstream, &output);   /* close stream */
        if (FUNC3(remainingToFlush)) { FUNC12(stderr, "ZSTD_seekable_endStream() error : %s \n", FUNC2(remainingToFlush)); FUNC9(13); }
        FUNC15(buffOut, output.pos, fout);
        if (!remainingToFlush) break;
    }

    FUNC7(cstream);
    FUNC10(fout);
    FUNC10(fin);
    FUNC14(buffIn);
    FUNC14(buffOut);
}