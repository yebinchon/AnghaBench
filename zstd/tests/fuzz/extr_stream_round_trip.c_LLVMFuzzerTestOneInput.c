
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
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 int ZSTD_compressBound (size_t) ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createDCtx () ;
 size_t ZSTD_decompressDCtx (int *,int *,size_t,int *,size_t const) ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_freeDCtx (int *) ;
 size_t bufSize ;
 int * cBuf ;
 int * cctx ;
 size_t compress (int *,size_t,int const*,size_t,int *) ;
 int * dctx ;
 int free (int *) ;
 scalar_t__ malloc (size_t) ;
 int memcmp (int const*,int *,size_t) ;
 int * rBuf ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{
    size_t neededBufSize;



    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);

    neededBufSize = ZSTD_compressBound(size) * 15;


    if (neededBufSize > bufSize) {
        free(cBuf);
        free(rBuf);
        cBuf = (uint8_t*)malloc(neededBufSize);
        rBuf = (uint8_t*)malloc(neededBufSize);
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
        size_t const cSize = compress(cBuf, neededBufSize, src, size, producer);
        size_t const rSize =
            ZSTD_decompressDCtx(dctx, rBuf, neededBufSize, cBuf, cSize);
        FUZZ_ZASSERT(rSize);
        FUZZ_ASSERT_MSG(rSize == size, "Incorrect regenerated size");
        FUZZ_ASSERT_MSG(!memcmp(src, rBuf, size), "Corruption!");
    }

    FUZZ_dataProducer_free(producer);

    ZSTD_freeCCtx(cctx); cctx = ((void*)0);
    ZSTD_freeDCtx(dctx); dctx = ((void*)0);

    return 0;
}
