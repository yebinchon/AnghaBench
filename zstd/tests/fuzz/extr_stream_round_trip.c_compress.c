
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ pos; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ size; int member_2; int member_1; int * member_0; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ZASSERT (size_t const) ;
 int FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 int FUZZ_setRandomParameters (int ,size_t const,int *) ;
 int ZSTD_CCtx_reset (int ,int ) ;
 void* ZSTD_compressStream2 (int ,TYPE_1__*,TYPE_2__*,int ) ;
 int ZSTD_e_continue ;
 int ZSTD_e_end ;
 int ZSTD_e_flush ;
 int ZSTD_reset_session_only ;
 int cctx ;
 TYPE_2__ makeInBuffer (int const**,size_t*,int *) ;
 TYPE_1__ makeOutBuffer (int *,size_t,int *) ;

__attribute__((used)) static size_t compress(uint8_t *dst, size_t capacity,
                       const uint8_t *src, size_t srcSize,
                     FUZZ_dataProducer_t *producer)
{
    size_t dstSize = 0;
    ZSTD_CCtx_reset(cctx, ZSTD_reset_session_only);
    FUZZ_setRandomParameters(cctx, srcSize, producer);

    while (srcSize > 0) {
        ZSTD_inBuffer in = makeInBuffer(&src, &srcSize, producer);

        int mode = -1;
        while (in.pos < in.size || mode != -1) {
            ZSTD_outBuffer out = makeOutBuffer(dst, capacity, producer);

            if (mode == -1) mode = FUZZ_dataProducer_uint32Range(producer, 0, 9);
            switch (mode) {
                case 0:
                case 1:
                case 2: {
                    size_t const ret =
                        ZSTD_compressStream2(cctx, &out, &in, ZSTD_e_flush);
                    FUZZ_ZASSERT(ret);
                    if (ret == 0)
                        mode = -1;
                    break;
                }
                case 3: {
                    size_t ret =
                        ZSTD_compressStream2(cctx, &out, &in, ZSTD_e_end);
                    FUZZ_ZASSERT(ret);

                    if (ret == 0) {
                        ZSTD_CCtx_reset(cctx, ZSTD_reset_session_only);
                        if (FUZZ_dataProducer_uint32Range(producer, 0, 7) == 0) {
                            size_t const remaining = in.size - in.pos;
                            FUZZ_setRandomParameters(cctx, remaining, producer);
                        }
                        mode = -1;
                    }
                    break;
                }
                default: {
                    size_t const ret =
                        ZSTD_compressStream2(cctx, &out, &in, ZSTD_e_continue);
                    FUZZ_ZASSERT(ret);
                    mode = -1;
                }
            }
            dst += out.pos;
            dstSize += out.pos;
            capacity -= out.pos;
        }
    }
    for (;;) {
        ZSTD_inBuffer in = {((void*)0), 0, 0};
        ZSTD_outBuffer out = makeOutBuffer(dst, capacity, producer);
        size_t const ret = ZSTD_compressStream2(cctx, &out, &in, ZSTD_e_end);
        FUZZ_ZASSERT(ret);

        dst += out.pos;
        dstSize += out.pos;
        capacity -= out.pos;
        if (ret == 0)
            break;
    }
    return dstSize;
}
