
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rle {scalar_t__* buf; int chain; scalar_t__ run; } ;
typedef int fz_context ;


 int fz_write_byte (int *,int ,scalar_t__) ;

__attribute__((used)) static void rle_flush_same(fz_context *ctx, struct rle *enc)
{
 fz_write_byte(ctx, enc->chain, 257 - enc->run);
 fz_write_byte(ctx, enc->chain, enc->buf[0]);
}
