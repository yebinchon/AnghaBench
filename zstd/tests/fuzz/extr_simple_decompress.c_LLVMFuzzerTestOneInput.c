
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (void*) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 size_t FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 void* ZSTD_createDCtx () ;
 int ZSTD_decompressDCtx (void*,void*,size_t const,int const*,size_t) ;
 int ZSTD_freeDCtx (void*) ;
 void* dctx ;
 int free (void*) ;
 void* malloc (size_t const) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{


    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);

    if (!dctx) {
        dctx = ZSTD_createDCtx();
        FUZZ_ASSERT(dctx);
    }

    size_t const bufSize = FUZZ_dataProducer_uint32Range(producer, 0, 10 * size);
    void *rBuf = malloc(bufSize);
    FUZZ_ASSERT(rBuf);

    ZSTD_decompressDCtx(dctx, rBuf, bufSize, src, size);
    free(rBuf);

    FUZZ_dataProducer_free(producer);


    ZSTD_freeDCtx(dctx); dctx = ((void*)0);

    return 0;
}
