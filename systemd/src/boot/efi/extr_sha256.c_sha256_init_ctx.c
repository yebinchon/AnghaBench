
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha256_ctx {int* H; scalar_t__ buflen; scalar_t__ total64; } ;



void sha256_init_ctx(struct sha256_ctx *ctx) {
        ctx->H[0] = 0x6a09e667;
        ctx->H[1] = 0xbb67ae85;
        ctx->H[2] = 0x3c6ef372;
        ctx->H[3] = 0xa54ff53a;
        ctx->H[4] = 0x510e527f;
        ctx->H[5] = 0x9b05688c;
        ctx->H[6] = 0x1f83d9ab;
        ctx->H[7] = 0x5be0cd19;

        ctx->total64 = 0;
        ctx->buflen = 0;
}
