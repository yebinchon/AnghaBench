
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (void*) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 int FUZZ_dataProducer_int32Range (int *,int ,int ) ;
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 size_t FUZZ_dataProducer_uint32Range (int *,int ,size_t const) ;
 size_t ZSTD_compressBound (size_t) ;
 int ZSTD_compressCCtx (void*,void*,size_t const,int const*,size_t,int const) ;
 void* ZSTD_createCCtx () ;
 int ZSTD_freeCCtx (void*) ;
 void* cctx ;
 int free (void*) ;
 int kMaxClevel ;
 int kMinClevel ;
 void* malloc (size_t const) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{


    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);

    size_t const maxSize = ZSTD_compressBound(size);
    size_t const bufSize = FUZZ_dataProducer_uint32Range(producer, 0, maxSize);

    int const cLevel = FUZZ_dataProducer_int32Range(producer, kMinClevel, kMaxClevel);

    if (!cctx) {
        cctx = ZSTD_createCCtx();
        FUZZ_ASSERT(cctx);
    }

    void *rBuf = malloc(bufSize);
    FUZZ_ASSERT(rBuf);
    ZSTD_compressCCtx(cctx, rBuf, bufSize, src, size, cLevel);
    free(rBuf);
    FUZZ_dataProducer_free(producer);

    ZSTD_freeCCtx(cctx); cctx = ((void*)0);

    return 0;
}
