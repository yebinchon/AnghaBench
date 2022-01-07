
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ress ;
struct TYPE_8__ {char const* dictFileName; int * cctx; void* dstBuffer; void* srcBuffer; int dstBufferSize; int srcBufferSize; } ;
typedef TYPE_1__ cRess_t ;
struct TYPE_9__ {int strategy; scalar_t__ targetLength; scalar_t__ minMatch; scalar_t__ searchLog; scalar_t__ hashLog; scalar_t__ chainLog; scalar_t__ windowLog; } ;
typedef TYPE_2__ ZSTD_compressionParameters ;
struct TYPE_10__ {int ldmFlag; int dictIDFlag; int checksumFlag; int ldmHashLog; int ldmMinMatch; int ldmBucketSizeLog; int ldmHashRateLog; int nbWorkers; int blockSize; int overlapLog; int rsyncable; scalar_t__ literalCompressionMode; scalar_t__ srcSizeHint; scalar_t__ targetCBlockSize; scalar_t__ adaptiveMode; } ;
typedef TYPE_3__ FIO_prefs_t ;


 scalar_t__ ADAPT_WINDOWLOG_DEFAULT ;
 int CHECK (int ) ;
 int DISPLAYLEVEL (int,char*,...) ;
 int EXM_THROW (int,char*,...) ;
 int FIO_LDM_PARAM_NOTSET ;
 int FIO_OVERLAP_LOG_NOTSET ;
 size_t FIO_createDictBuffer (void**,char const*) ;
 int ZSTD_CCtx_loadDictionary (int *,void*,size_t const) ;
 int ZSTD_CCtx_setParameter (int *,int ,int) ;
 int ZSTD_CStreamInSize () ;
 int ZSTD_CStreamOutSize () ;
 int ZSTD_c_chainLog ;
 int ZSTD_c_checksumFlag ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_c_contentSizeFlag ;
 int ZSTD_c_dictIDFlag ;
 int ZSTD_c_enableLongDistanceMatching ;
 int ZSTD_c_hashLog ;
 int ZSTD_c_jobSize ;
 int ZSTD_c_ldmBucketSizeLog ;
 int ZSTD_c_ldmHashLog ;
 int ZSTD_c_ldmHashRateLog ;
 int ZSTD_c_ldmMinMatch ;
 int ZSTD_c_literalCompressionMode ;
 int ZSTD_c_minMatch ;
 int ZSTD_c_nbWorkers ;
 int ZSTD_c_overlapLog ;
 int ZSTD_c_rsyncable ;
 int ZSTD_c_searchLog ;
 int ZSTD_c_srcSizeHint ;
 int ZSTD_c_strategy ;
 int ZSTD_c_targetCBlockSize ;
 int ZSTD_c_targetLength ;
 int ZSTD_c_windowLog ;
 int * ZSTD_createCCtx () ;
 int errno ;
 int free (void*) ;
 void* malloc (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strerror (int ) ;

__attribute__((used)) static cRess_t FIO_createCResources(FIO_prefs_t* const prefs,
                                    const char* dictFileName, int cLevel,
                                    ZSTD_compressionParameters comprParams) {
    cRess_t ress;
    memset(&ress, 0, sizeof(ress));

    DISPLAYLEVEL(6, "FIO_createCResources \n");
    ress.cctx = ZSTD_createCCtx();
    if (ress.cctx == ((void*)0))
        EXM_THROW(30, "allocation error (%s): can't create ZSTD_CCtx",
                    strerror(errno));
    ress.srcBufferSize = ZSTD_CStreamInSize();
    ress.srcBuffer = malloc(ress.srcBufferSize);
    ress.dstBufferSize = ZSTD_CStreamOutSize();
    ress.dstBuffer = malloc(ress.dstBufferSize);
    if (!ress.srcBuffer || !ress.dstBuffer)
        EXM_THROW(31, "allocation error : not enough memory");


    { void* dictBuffer;
        size_t const dictBuffSize = FIO_createDictBuffer(&dictBuffer, dictFileName);
        if (dictFileName && (dictBuffer==((void*)0)))
            EXM_THROW(32, "allocation error : can't create dictBuffer");
        ress.dictFileName = dictFileName;

        if (prefs->adaptiveMode && !prefs->ldmFlag && !comprParams.windowLog)
            comprParams.windowLog = ADAPT_WINDOWLOG_DEFAULT;

        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_contentSizeFlag, 1) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_dictIDFlag, prefs->dictIDFlag) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_checksumFlag, prefs->checksumFlag) );

        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_compressionLevel, cLevel) );

        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_targetCBlockSize, (int)prefs->targetCBlockSize) );

        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_srcSizeHint, (int)prefs->srcSizeHint) );

        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_enableLongDistanceMatching, prefs->ldmFlag) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_ldmHashLog, prefs->ldmHashLog) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_ldmMinMatch, prefs->ldmMinMatch) );
        if (prefs->ldmBucketSizeLog != FIO_LDM_PARAM_NOTSET) {
            CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_ldmBucketSizeLog, prefs->ldmBucketSizeLog) );
        }
        if (prefs->ldmHashRateLog != FIO_LDM_PARAM_NOTSET) {
            CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_ldmHashRateLog, prefs->ldmHashRateLog) );
        }

        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_windowLog, (int)comprParams.windowLog) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_chainLog, (int)comprParams.chainLog) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_hashLog, (int)comprParams.hashLog) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_searchLog, (int)comprParams.searchLog) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_minMatch, (int)comprParams.minMatch) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_targetLength, (int)comprParams.targetLength) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_strategy, comprParams.strategy) );
        CHECK( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_literalCompressionMode, (int)prefs->literalCompressionMode) );
        CHECK( ZSTD_CCtx_loadDictionary(ress.cctx, dictBuffer, dictBuffSize) );
        free(dictBuffer);
    }

    return ress;
}
