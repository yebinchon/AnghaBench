
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ avail_out; int * next_out; void* avail_in; int * next_in; scalar_t__ opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef scalar_t__ voidpf ;
typedef int uint8_t ;
typedef void* uint32_t ;
typedef int NTSTATUS ;


 int ERR (char*,int) ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int zlib_alloc ;
 int zlib_free ;

NTSTATUS zlib_decompress(uint8_t* inbuf, uint32_t inlen, uint8_t* outbuf, uint32_t outlen) {
    z_stream c_stream;
    int ret;

    c_stream.zalloc = zlib_alloc;
    c_stream.zfree = zlib_free;
    c_stream.opaque = (voidpf)0;

    ret = inflateInit(&c_stream);

    if (ret != Z_OK) {
        ERR("inflateInit returned %08x\n", ret);
        return STATUS_INTERNAL_ERROR;
    }

    c_stream.next_in = inbuf;
    c_stream.avail_in = inlen;

    c_stream.next_out = outbuf;
    c_stream.avail_out = outlen;

    do {
        ret = inflate(&c_stream, Z_NO_FLUSH);

        if (ret != Z_OK && ret != Z_STREAM_END) {
            ERR("inflate returned %08x\n", ret);
            inflateEnd(&c_stream);
            return STATUS_INTERNAL_ERROR;
        }

        if (c_stream.avail_out == 0)
            break;
    } while (ret != Z_STREAM_END);

    ret = inflateEnd(&c_stream);

    if (ret != Z_OK) {
        ERR("inflateEnd returned %08x\n", ret);
        return STATUS_INTERNAL_ERROR;
    }



    return STATUS_SUCCESS;
}
