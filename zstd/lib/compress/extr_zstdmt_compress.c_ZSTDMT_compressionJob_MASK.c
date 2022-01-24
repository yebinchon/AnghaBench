#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/ * seq; } ;
typedef  TYPE_4__ rawSeqStore_t ;
struct TYPE_20__ {int capacity; int /*<<< orphan*/ * start; } ;
typedef  TYPE_5__ buffer_t ;
struct TYPE_17__ {scalar_t__ enableLdm; } ;
struct TYPE_16__ {scalar_t__ checksumFlag; } ;
struct TYPE_21__ {TYPE_2__ ldmParams; TYPE_1__ fParams; } ;
typedef  TYPE_6__ ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
struct TYPE_15__ {size_t const size; int /*<<< orphan*/  const* start; } ;
struct TYPE_18__ {scalar_t__ size; int /*<<< orphan*/ * start; } ;
struct TYPE_22__ {scalar_t__ jobID; size_t const fullFrameSize; int firstJob; scalar_t__ cSize; size_t consumed; int lastJob; int /*<<< orphan*/  job_mutex; int /*<<< orphan*/  job_cond; TYPE_11__ src; int /*<<< orphan*/  cctxPool; int /*<<< orphan*/  seqPool; TYPE_3__ prefix; int /*<<< orphan*/  serial; int /*<<< orphan*/ * cdict; TYPE_5__ dstBuff; int /*<<< orphan*/  bufPool; TYPE_6__ params; } ;
typedef  TYPE_7__ ZSTDMT_jobDescription ;
typedef  size_t const U64 ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t,...) ; 
 size_t const FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (size_t const) ; 
 TYPE_5__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,size_t const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ * const,TYPE_4__,TYPE_11__,scalar_t__) ; 
 int ZSTD_BLOCKSIZE_MAX ; 
 size_t FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZSTD_c_forceMaxWindow ; 
 size_t FUNC12 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*,size_t const) ; 
 size_t FUNC13 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const) ; 
 size_t FUNC14 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 int /*<<< orphan*/  ZSTD_dct_rawContent ; 
 int /*<<< orphan*/  ZSTD_dtlm_fast ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC16 (size_t const) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 

__attribute__((used)) static void FUNC20(void* jobDescription)
{
    ZSTDMT_jobDescription* const job = (ZSTDMT_jobDescription*)jobDescription;
    ZSTD_CCtx_params jobParams = job->params;   /* do not modify job->params ! copy it, modify the copy */
    ZSTD_CCtx* const cctx = FUNC4(job->cctxPool);
    rawSeqStore_t rawSeqStore = FUNC5(job->seqPool);
    buffer_t dstBuff = job->dstBuff;
    size_t lastCBlockSize = 0;

    /* resources */
    if (cctx==NULL) FUNC2(FUNC1(memory_allocation));
    if (dstBuff.start == NULL) {   /* streaming job : doesn't provide a dstBuffer */
        dstBuff = FUNC3(job->bufPool);
        if (dstBuff.start==NULL) FUNC2(FUNC1(memory_allocation));
        job->dstBuff = dstBuff;   /* this value can be read in ZSTDMT_flush, when it copies the whole job */
    }
    if (jobParams.ldmParams.enableLdm && rawSeqStore.seq == NULL)
        FUNC2(FUNC1(memory_allocation));

    /* Don't compute the checksum for chunks, since we compute it externally,
     * but write it in the header.
     */
    if (job->jobID != 0) jobParams.fParams.checksumFlag = 0;
    /* Don't run LDM for the chunks, since we handle it externally */
    jobParams.ldmParams.enableLdm = 0;


    /* init */
    if (job->cdict) {
        size_t const initError = FUNC12(cctx, NULL, 0, ZSTD_dct_auto, ZSTD_dtlm_fast, job->cdict, &jobParams, job->fullFrameSize);
        FUNC19(job->firstJob);  /* only allowed for first job */
        if (FUNC16(initError)) FUNC2(initError);
    } else {  /* srcStart points at reloaded section */
        U64 const pledgedSrcSize = job->firstJob ? job->fullFrameSize : job->src.size;
        {   size_t const forceWindowError = FUNC10(&jobParams, ZSTD_c_forceMaxWindow, !job->firstJob);
            if (FUNC16(forceWindowError)) FUNC2(forceWindowError);
        }
        {   size_t const initError = FUNC12(cctx,
                                        job->prefix.start, job->prefix.size, ZSTD_dct_rawContent, /* load dictionary in "content-only" mode (no header analysis) */
                                        ZSTD_dtlm_fast,
                                        NULL, /*cdict*/
                                        &jobParams, pledgedSrcSize);
            if (FUNC16(initError)) FUNC2(initError);
    }   }

    /* Perform serial step as early as possible, but after CCtx initialization */
    FUNC9(job->serial, cctx, rawSeqStore, job->src, job->jobID);

    if (!job->firstJob) {  /* flush and overwrite frame header when it's not first job */
        size_t const hSize = FUNC13(cctx, dstBuff.start, dstBuff.capacity, job->src.start, 0);
        if (FUNC16(hSize)) FUNC2(hSize);
        FUNC0(5, "ZSTDMT_compressionJob: flush and overwrite %u bytes of frame header (not first job)", (U32)hSize);
        FUNC15(cctx);
    }

    /* compress */
    {   size_t const chunkSize = 4*ZSTD_BLOCKSIZE_MAX;
        int const nbChunks = (int)((job->src.size + (chunkSize-1)) / chunkSize);
        const BYTE* ip = (const BYTE*) job->src.start;
        BYTE* const ostart = (BYTE*)dstBuff.start;
        BYTE* op = ostart;
        BYTE* oend = op + dstBuff.capacity;
        int chunkNb;
        if (sizeof(size_t) > sizeof(int)) FUNC19(job->src.size < ((size_t)INT_MAX) * chunkSize);   /* check overflow */
        FUNC0(5, "ZSTDMT_compressionJob: compress %u bytes in %i blocks", (U32)job->src.size, nbChunks);
        FUNC19(job->cSize == 0);
        for (chunkNb = 1; chunkNb < nbChunks; chunkNb++) {
            size_t const cSize = FUNC13(cctx, op, oend-op, ip, chunkSize);
            if (FUNC16(cSize)) FUNC2(cSize);
            ip += chunkSize;
            op += cSize; FUNC19(op < oend);
            /* stats */
            FUNC11(&job->job_mutex);
            job->cSize += cSize;
            job->consumed = chunkSize * chunkNb;
            FUNC0(5, "ZSTDMT_compressionJob: compress new block : cSize==%u bytes (total: %u)",
                        (U32)cSize, (U32)job->cSize);
            FUNC17(&job->job_cond);   /* warns some more data is ready to be flushed */
            FUNC18(&job->job_mutex);
        }
        /* last block */
        FUNC19(chunkSize > 0);
        FUNC19((chunkSize & (chunkSize - 1)) == 0);  /* chunkSize must be power of 2 for mask==(chunkSize-1) to work */
        if ((nbChunks > 0) | job->lastJob /*must output a "last block" flag*/ ) {
            size_t const lastBlockSize1 = job->src.size & (chunkSize-1);
            size_t const lastBlockSize = ((lastBlockSize1==0) & (job->src.size>=chunkSize)) ? chunkSize : lastBlockSize1;
            size_t const cSize = (job->lastJob) ?
                 FUNC14     (cctx, op, oend-op, ip, lastBlockSize) :
                 FUNC13(cctx, op, oend-op, ip, lastBlockSize);
            if (FUNC16(cSize)) FUNC2(cSize);
            lastCBlockSize = cSize;
    }   }

_endJob:
    FUNC8(job->serial, job->jobID, job->cSize);
    if (job->prefix.size > 0)
        FUNC0(5, "Finished with prefix: %zx", (size_t)job->prefix.start);
    FUNC0(5, "Finished with source: %zx", (size_t)job->src.start);
    /* release resources */
    FUNC7(job->seqPool, rawSeqStore);
    FUNC6(job->cctxPool, cctx);
    /* report */
    FUNC11(&job->job_mutex);
    if (FUNC16(job->cSize)) FUNC19(lastCBlockSize == 0);
    job->cSize += lastCBlockSize;
    job->consumed = job->src.size;  /* when job->consumed == job->src.size , compression job is presumed completed */
    FUNC17(&job->job_cond);
    FUNC18(&job->job_mutex);
}