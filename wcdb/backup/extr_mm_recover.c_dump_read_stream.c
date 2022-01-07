
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ avail_out; int avail_in; char* msg; int next_in; int * next_out; } ;
struct TYPE_4__ {int sec_size; int flags; TYPE_2__ zstrm; int in_buf; int rc4_key; int fp; } ;
typedef TYPE_1__ mm_recover_ctx ;


 int LOG_AND_FAIL (char*,char*) ;
 int MMBAK_FLAG_NO_CIPHER ;
 int MMBAK_RET_FAILED ;
 int RC4 (int *,int,int ,int ) ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int errno ;
 scalar_t__ ferror (int ) ;
 int fread (int ,int,int,int ) ;
 int inflate (TYPE_2__*,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static int dump_read_stream(mm_recover_ctx *ctx, void *buf, uint_t size)
{
    int ret;

    if (size == 0)
        return 0;

    ctx->zstrm.next_out = (uint8_t *) buf;
    ctx->zstrm.avail_out = size;

    do {
        if (ctx->zstrm.avail_in == 0 && ctx->sec_size > 0) {
            ret = (ctx->sec_size > sizeof(ctx->in_buf)) ? sizeof(ctx->in_buf)
                                                        : ctx->sec_size;

            ret = fread(ctx->in_buf, 1, ret, ctx->fp);
            if (ret == 0 && ferror(ctx->fp))
                LOG_AND_FAIL("Failed reading stream: %s", strerror(errno));
            if (ret > 0) {
                if ((ctx->flags & MMBAK_FLAG_NO_CIPHER) == 0)
                    RC4(&ctx->rc4_key, ret, ctx->in_buf, ctx->in_buf);
                ctx->zstrm.next_in = ctx->in_buf;
                ctx->zstrm.avail_in = ret;

                ctx->sec_size -= ret;
            }
        }

        ret = inflate(&ctx->zstrm, Z_NO_FLUSH);
        if (ret != Z_OK && ret != Z_STREAM_END)
            LOG_AND_FAIL("Inflate error: %s",
                         ctx->zstrm.msg ? ctx->zstrm.msg : "Unknown");

    } while (ctx->zstrm.avail_out > 0 && ret != Z_STREAM_END);

    return size - ctx->zstrm.avail_out;

bail:
    return MMBAK_RET_FAILED;
}
