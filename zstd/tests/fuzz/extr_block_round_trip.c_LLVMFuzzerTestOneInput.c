
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int) ;
 int FUZZ_ASSERT_MSG (int,char*) ;
 int FUZZ_ZASSERT (size_t const) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 int FUZZ_dataProducer_int32Range (int *,int ,int ) ;
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 size_t ZSTD_BLOCKSIZE_MAX ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createDCtx () ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_freeDCtx (int *) ;
 size_t bufSize ;
 scalar_t__ cBuf ;
 int * cctx ;
 int * dctx ;
 int free (scalar_t__) ;
 int kMaxClevel ;
 int kMinClevel ;
 scalar_t__ malloc (size_t) ;
 int memcmp (int const*,scalar_t__,size_t) ;
 scalar_t__ rBuf ;
 size_t roundTripTest (scalar_t__,size_t,scalar_t__,size_t,int const*,size_t,int const) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{


    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);

    int const cLevel = FUZZ_dataProducer_int32Range(producer, kMinClevel, kMaxClevel);

    size_t neededBufSize = size;
    if (size > ZSTD_BLOCKSIZE_MAX)
        size = ZSTD_BLOCKSIZE_MAX;


    if (neededBufSize > bufSize || !cBuf || !rBuf) {
        free(cBuf);
        free(rBuf);
        cBuf = malloc(neededBufSize);
        rBuf = malloc(neededBufSize);
        bufSize = neededBufSize;
        FUZZ_ASSERT(cBuf && rBuf);
    }
    if (!cctx) {
        cctx = ZSTD_createCCtx();
        FUZZ_ASSERT(cctx);
    }
    if (!dctx) {
        dctx = ZSTD_createDCtx();
        FUZZ_ASSERT(dctx);
    }

    {
        size_t const result =
            roundTripTest(rBuf, neededBufSize, cBuf, neededBufSize, src, size,
              cLevel);
        FUZZ_ZASSERT(result);
        FUZZ_ASSERT_MSG(result == size, "Incorrect regenerated size");
        FUZZ_ASSERT_MSG(!memcmp(src, rBuf, size), "Corruption!");
    }
    FUZZ_dataProducer_free(producer);

    ZSTD_freeCCtx(cctx); cctx = ((void*)0);
    ZSTD_freeDCtx(dctx); dctx = ((void*)0);

    return 0;
}
