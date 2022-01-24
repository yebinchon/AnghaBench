#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ress ;
struct TYPE_8__ {char const* dictFileName; int /*<<< orphan*/ * cctx; void* dstBuffer; void* srcBuffer; int /*<<< orphan*/  dstBufferSize; int /*<<< orphan*/  srcBufferSize; } ;
typedef  TYPE_1__ cRess_t ;
struct TYPE_9__ {int strategy; scalar_t__ targetLength; scalar_t__ minMatch; scalar_t__ searchLog; scalar_t__ hashLog; scalar_t__ chainLog; scalar_t__ windowLog; } ;
typedef  TYPE_2__ ZSTD_compressionParameters ;
struct TYPE_10__ {int ldmFlag; int dictIDFlag; int checksumFlag; int ldmHashLog; int ldmMinMatch; int ldmBucketSizeLog; int ldmHashRateLog; int nbWorkers; int blockSize; int overlapLog; int rsyncable; scalar_t__ literalCompressionMode; scalar_t__ srcSizeHint; scalar_t__ targetCBlockSize; scalar_t__ adaptiveMode; } ;
typedef  TYPE_3__ FIO_prefs_t ;

/* Variables and functions */
 scalar_t__ ADAPT_WINDOWLOG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FIO_LDM_PARAM_NOTSET ; 
 int FIO_OVERLAP_LOG_NOTSET ; 
 size_t FUNC3 (void**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  ZSTD_c_chainLog ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/  ZSTD_c_contentSizeFlag ; 
 int /*<<< orphan*/  ZSTD_c_dictIDFlag ; 
 int /*<<< orphan*/  ZSTD_c_enableLongDistanceMatching ; 
 int /*<<< orphan*/  ZSTD_c_hashLog ; 
 int /*<<< orphan*/  ZSTD_c_jobSize ; 
 int /*<<< orphan*/  ZSTD_c_ldmBucketSizeLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmHashLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmHashRateLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmMinMatch ; 
 int /*<<< orphan*/  ZSTD_c_literalCompressionMode ; 
 int /*<<< orphan*/  ZSTD_c_minMatch ; 
 int /*<<< orphan*/  ZSTD_c_nbWorkers ; 
 int /*<<< orphan*/  ZSTD_c_overlapLog ; 
 int /*<<< orphan*/  ZSTD_c_rsyncable ; 
 int /*<<< orphan*/  ZSTD_c_searchLog ; 
 int /*<<< orphan*/  ZSTD_c_srcSizeHint ; 
 int /*<<< orphan*/  ZSTD_c_strategy ; 
 int /*<<< orphan*/  ZSTD_c_targetCBlockSize ; 
 int /*<<< orphan*/  ZSTD_c_targetLength ; 
 int /*<<< orphan*/  ZSTD_c_windowLog ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static cRess_t FUNC13(FIO_prefs_t* const prefs,
                                    const char* dictFileName, int cLevel,
                                    ZSTD_compressionParameters comprParams) {
    cRess_t ress;
    FUNC11(&ress, 0, sizeof(ress));

    FUNC1(6, "FIO_createCResources \n");
    ress.cctx = FUNC8();
    if (ress.cctx == NULL)
        FUNC2(30, "allocation error (%s): can't create ZSTD_CCtx",
                    FUNC12(errno));
    ress.srcBufferSize = FUNC6();
    ress.srcBuffer = FUNC10(ress.srcBufferSize);
    ress.dstBufferSize = FUNC7();
    ress.dstBuffer = FUNC10(ress.dstBufferSize);
    if (!ress.srcBuffer || !ress.dstBuffer)
        FUNC2(31, "allocation error : not enough memory");

    /* Advanced parameters, including dictionary */
    {   void* dictBuffer;
        size_t const dictBuffSize = FUNC3(&dictBuffer, dictFileName);   /* works with dictFileName==NULL */
        if (dictFileName && (dictBuffer==NULL))
            FUNC2(32, "allocation error : can't create dictBuffer");
        ress.dictFileName = dictFileName;

        if (prefs->adaptiveMode && !prefs->ldmFlag && !comprParams.windowLog)
            comprParams.windowLog = ADAPT_WINDOWLOG_DEFAULT;

        FUNC0( FUNC5(ress.cctx, ZSTD_c_contentSizeFlag, 1) );  /* always enable content size when available (note: supposed to be default) */
        FUNC0( FUNC5(ress.cctx, ZSTD_c_dictIDFlag, prefs->dictIDFlag) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_checksumFlag, prefs->checksumFlag) );
        /* compression level */
        FUNC0( FUNC5(ress.cctx, ZSTD_c_compressionLevel, cLevel) );
        /* max compressed block size */
        FUNC0( FUNC5(ress.cctx, ZSTD_c_targetCBlockSize, (int)prefs->targetCBlockSize) );
        /* source size hint */
        FUNC0( FUNC5(ress.cctx, ZSTD_c_srcSizeHint, (int)prefs->srcSizeHint) );
        /* long distance matching */
        FUNC0( FUNC5(ress.cctx, ZSTD_c_enableLongDistanceMatching, prefs->ldmFlag) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_ldmHashLog, prefs->ldmHashLog) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_ldmMinMatch, prefs->ldmMinMatch) );
        if (prefs->ldmBucketSizeLog != FIO_LDM_PARAM_NOTSET) {
            FUNC0( FUNC5(ress.cctx, ZSTD_c_ldmBucketSizeLog, prefs->ldmBucketSizeLog) );
        }
        if (prefs->ldmHashRateLog != FIO_LDM_PARAM_NOTSET) {
            FUNC0( FUNC5(ress.cctx, ZSTD_c_ldmHashRateLog, prefs->ldmHashRateLog) );
        }
        /* compression parameters */
        FUNC0( FUNC5(ress.cctx, ZSTD_c_windowLog, (int)comprParams.windowLog) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_chainLog, (int)comprParams.chainLog) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_hashLog, (int)comprParams.hashLog) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_searchLog, (int)comprParams.searchLog) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_minMatch, (int)comprParams.minMatch) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_targetLength, (int)comprParams.targetLength) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_strategy, comprParams.strategy) );
        FUNC0( FUNC5(ress.cctx, ZSTD_c_literalCompressionMode, (int)prefs->literalCompressionMode) );
        /* multi-threading */
#ifdef ZSTD_MULTITHREAD
        DISPLAYLEVEL(5,"set nb workers = %u \n", prefs->nbWorkers);
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_nbWorkers, prefs->nbWorkers) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_jobSize, prefs->blockSize) );
        if (prefs->overlapLog != FIO_OVERLAP_LOG_NOTSET) {
            DISPLAYLEVEL(3,"set overlapLog = %u \n", prefs->overlapLog);
            CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_overlapLog, prefs->overlapLog) );
        }
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_rsyncable, prefs->rsyncable) );
#endif
        /* dictionary */
        FUNC0( FUNC4(ress.cctx, dictBuffer, dictBuffSize) );
        FUNC9(dictBuffer);
    }

    return ress;
}