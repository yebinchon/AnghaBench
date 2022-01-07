
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rle {scalar_t__ run; int buf; int chain; } ;
typedef int fz_context ;


 int fz_write_byte (int *,int ,scalar_t__) ;
 int fz_write_data (int *,int ,int ,scalar_t__) ;

__attribute__((used)) static void rle_flush_diff(fz_context *ctx, struct rle *enc)
{
 fz_write_byte(ctx, enc->chain, enc->run - 1);
 fz_write_data(ctx, enc->chain, enc->buf, enc->run);
}
