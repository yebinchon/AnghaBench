
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_5__ {scalar_t__ pos; void* size; int * dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {scalar_t__ pos; void* size; int * src; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_DStream ;
typedef int NTSTATUS ;


 int ERR (char*,...) ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 int * ZSTD_createDStream_advanced (int ) ;
 size_t ZSTD_decompressStream (int *,TYPE_1__*,TYPE_2__*) ;
 int ZSTD_freeDStream (int *) ;
 int ZSTD_getErrorName (size_t) ;
 size_t ZSTD_initDStream (int *) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int zstd_mem ;

NTSTATUS zstd_decompress(uint8_t* inbuf, uint32_t inlen, uint8_t* outbuf, uint32_t outlen) {
    NTSTATUS Status;
    ZSTD_DStream* stream;
    size_t init_res, read;
    ZSTD_inBuffer input;
    ZSTD_outBuffer output;

    stream = ZSTD_createDStream_advanced(zstd_mem);

    if (!stream) {
        ERR("ZSTD_createDStream failed.\n");
        return STATUS_INTERNAL_ERROR;
    }

    init_res = ZSTD_initDStream(stream);

    if (ZSTD_isError(init_res)) {
        ERR("ZSTD_initDStream failed: %s\n", ZSTD_getErrorName(init_res));
        Status = STATUS_INTERNAL_ERROR;
        goto end;
    }

    input.src = inbuf;
    input.size = inlen;
    input.pos = 0;

    output.dst = outbuf;
    output.size = outlen;
    output.pos = 0;

    read = ZSTD_decompressStream(stream, &output, &input);

    if (ZSTD_isError(read)) {
        ERR("ZSTD_decompressStream failed: %s\n", ZSTD_getErrorName(read));
        Status = STATUS_INTERNAL_ERROR;
        goto end;
    }

    Status = STATUS_SUCCESS;

end:
    ZSTD_freeDStream(stream);

    return Status;
}
