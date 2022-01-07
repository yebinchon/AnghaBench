
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rle {int state; int chain; } ;
typedef int fz_context ;






 int fz_write_byte (int *,int ,int) ;
 int rle_flush_diff (int *,struct rle*) ;
 int rle_flush_same (int *,struct rle*) ;

__attribute__((used)) static void rle_close(fz_context *ctx, void *opaque)
{
 struct rle *enc = opaque;
 switch (enc->state)
 {
  case 128: break;
  case 130: rle_flush_diff(ctx, enc); break;
  case 131: rle_flush_diff(ctx, enc); break;
  case 129: rle_flush_same(ctx, enc); break;
 }
 fz_write_byte(ctx, enc->chain, 128);
}
