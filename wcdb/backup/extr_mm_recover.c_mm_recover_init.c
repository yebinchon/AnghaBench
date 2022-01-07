
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fp; int zstrm; int flags; int rc4_template; int (* log ) (int ,char*) ;} ;
typedef TYPE_1__ mm_recover_ctx ;
typedef int (* mm_logfunc ) (int ,char*) ;


 int LOGI (char*,char const*) ;
 int LOG_AND_FAIL (char*,char const*,int ) ;
 int MMBAK_FLAG_NO_CIPHER ;
 int MMBAK_LOG_ERROR ;
 int RC4_set_key (int *,int,unsigned char const*) ;
 int dummy_log (int ,char*) ;
 int errno ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (char const*,char*) ;
 int free (TYPE_1__*) ;
 int inflateEnd (int *) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ read_header (TYPE_1__*) ;
 int strerror (int ) ;

mm_recover_ctx *mm_recover_init(const char *in_path,
                                const unsigned char *key,
                                int key_len,
                                mm_logfunc logfunc)
{
    if (!logfunc)
        logfunc = dummy_log;

    mm_recover_ctx *ctx = (mm_recover_ctx *) malloc(sizeof(mm_recover_ctx));
    if (!ctx) {
        logfunc(MMBAK_LOG_ERROR, "Memory allocation failed.");
        return ((void*)0);
    }
    memset(ctx, 0, sizeof(mm_recover_ctx));
    ctx->log = logfunc;

    if (key && key_len > 0)
        RC4_set_key(&ctx->rc4_template, key_len, key);
    else
        ctx->flags |= MMBAK_FLAG_NO_CIPHER;

    ctx->fp = fopen(in_path, "rb");
    if (!ctx->fp)
        LOG_AND_FAIL("Cannot open file '%s' for reading: %s", in_path,
                     strerror(errno));


    if (read_header(ctx) != 0)
        goto bail;

    LOGI("Database recover context initialized. [input: %s]", in_path);
    return ctx;

bail:
    if (ctx) {
        inflateEnd(&ctx->zstrm);
        if (ctx->fp)
            fclose(ctx->fp);
        free(ctx);
    }
    return ((void*)0);
}
