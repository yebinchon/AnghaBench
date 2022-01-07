
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* member_0; size_t member_1; scalar_t__ pos; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_8__ {void const* member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_EndDirective ;
typedef int ZSTD_DCtx ;
typedef int ZSTD_CCtx ;


 size_t ZSTD_compressStream2 (int *,TYPE_1__*,TYPE_2__*,int ) ;
 size_t ZSTD_decompressStream (int *,TYPE_1__*,TYPE_2__*) ;
 int ZSTD_e_end ;
 char* ZSTD_getErrorName (size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
compress(ZSTD_CCtx* cctx, ZSTD_DCtx* dctx,
         void* dst, size_t dstCapacity,
         void const* src, size_t srcSize,
         void* roundtrip, ZSTD_EndDirective end)
{
    ZSTD_inBuffer in = {src, srcSize, 0};
    ZSTD_outBuffer out = {dst, dstCapacity, 0};
    int ended = 0;

    while (!ended && (in.pos < in.size || out.pos > 0)) {
        size_t rc;
        out.pos = 0;
        rc = ZSTD_compressStream2(cctx, &out, &in, end);
        if (ZSTD_isError(rc))
            return 1;
        if (end == ZSTD_e_end && rc == 0)
            ended = 1;
        {
            ZSTD_inBuffer rtIn = {dst, out.pos, 0};
            ZSTD_outBuffer rtOut = {roundtrip, srcSize, 0};
            rc = 1;
            while (rtIn.pos < rtIn.size || rtOut.pos > 0) {
                rtOut.pos = 0;
                rc = ZSTD_decompressStream(dctx, &rtOut, &rtIn);
                if (ZSTD_isError(rc)) {
                    fprintf(stderr, "Decompression error: %s\n", ZSTD_getErrorName(rc));
                    return 1;
                }
                if (rc == 0)
                    break;
            }
            if (ended && rc != 0) {
                fprintf(stderr, "Frame not finished!\n");
                return 1;
            }
        }
    }

    return 0;
}
