
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha256_ctx {int buflen; int total64; int* total; int* H; int * buffer; void** buffer32; } ;
typedef int UINTN ;
typedef int UINT32 ;


 int CopyMem (int *,int ,int) ;
 void* SWAP (int) ;
 size_t TOTAL64_high ;
 size_t TOTAL64_low ;
 int fillbuf ;
 int sha256_process_block (int *,int,struct sha256_ctx*) ;

void *sha256_finish_ctx(struct sha256_ctx *ctx, void *resbuf) {

        UINT32 bytes = ctx->buflen;
        UINTN pad, i;


        ctx->total64 += bytes;

        pad = bytes >= 56 ? 64 + 56 - bytes : 56 - bytes;
        CopyMem (&ctx->buffer[bytes], fillbuf, pad);


        ctx->buffer32[(bytes + pad + 4) / 4] = SWAP (ctx->total[TOTAL64_low] << 3);
        ctx->buffer32[(bytes + pad) / 4] = SWAP ((ctx->total[TOTAL64_high] << 3)
                                                 | (ctx->total[TOTAL64_low] >> 29));


        sha256_process_block (ctx->buffer, bytes + pad + 8, ctx);


        for (i = 0; i < 8; ++i)
                ((UINT32 *) resbuf)[i] = SWAP (ctx->H[i]);

        return resbuf;
}
