
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ZSTD_outBuffer ;
struct TYPE_4__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_1__ ZSTD_inBuffer ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int *) ;
 int FUZZ_ZASSERT (int ) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 int ZSTD_DCtx_reset (int *,int ) ;
 int * ZSTD_createDStream () ;
 size_t ZSTD_decompressStream (int *,int *,TYPE_1__*) ;
 int ZSTD_freeDStream (int *) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int ZSTD_reset_session_only ;
 int * buf ;
 int * dstream ;
 int kBufSize ;
 TYPE_1__ makeInBuffer (int const**,size_t*,int *) ;
 int makeOutBuffer (int *) ;
 int * malloc (int ) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{


    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);


    if (!buf) {
      buf = malloc(kBufSize);
        FUZZ_ASSERT(buf);
      }

    if (!dstream) {
        dstream = ZSTD_createDStream();
        FUZZ_ASSERT(dstream);
    } else {
        FUZZ_ZASSERT(ZSTD_DCtx_reset(dstream, ZSTD_reset_session_only));
    }

    while (size > 0) {
        ZSTD_inBuffer in = makeInBuffer(&src, &size, producer);
        while (in.pos != in.size) {
            ZSTD_outBuffer out = makeOutBuffer(producer);
            size_t const rc = ZSTD_decompressStream(dstream, &out, &in);
            if (ZSTD_isError(rc)) goto error;
        }
    }

error:

    ZSTD_freeDStream(dstream); dstream = ((void*)0);

    FUZZ_dataProducer_free(producer);
    return 0;
}
