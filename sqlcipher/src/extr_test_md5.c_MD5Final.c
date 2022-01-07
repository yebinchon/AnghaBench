
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int* bits; unsigned char* in; int* buf; } ;
typedef TYPE_1__ MD5Context ;


 int MD5Transform (int*,int *) ;
 int byteReverse (unsigned char*,int) ;
 int memcpy (unsigned char*,int*,int) ;
 int memset (unsigned char*,int ,unsigned int) ;

__attribute__((used)) static void MD5Final(unsigned char digest[16], MD5Context *ctx){
        unsigned count;
        unsigned char *p;


        count = (ctx->bits[0] >> 3) & 0x3F;



        p = ctx->in + count;
        *p++ = 0x80;


        count = 64 - 1 - count;


        if (count < 8) {

                memset(p, 0, count);
                byteReverse(ctx->in, 16);
                MD5Transform(ctx->buf, (uint32 *)ctx->in);


                memset(ctx->in, 0, 56);
        } else {

                memset(p, 0, count-8);
        }
        byteReverse(ctx->in, 14);


        memcpy(ctx->in + 14*4, ctx->bits, 8);

        MD5Transform(ctx->buf, (uint32 *)ctx->in);
        byteReverse((unsigned char *)ctx->buf, 4);
        memcpy(digest, ctx->buf, 16);
}
