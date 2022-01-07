
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rle {int state; int run; int* buf; } ;
typedef int fz_context ;






 int rle_flush_diff (int *,struct rle*) ;
 int rle_flush_same (int *,struct rle*) ;

__attribute__((used)) static void rle_write(fz_context *ctx, void *opaque, const void *data, size_t n)
{
 struct rle *enc = opaque;
 const unsigned char *p = data;
 while (n-- > 0)
 {
  int c = *p++;
  switch (enc->state)
  {
  case 128:
   enc->state = 130;
   enc->run = 1;
   enc->buf[0] = c;
   break;

  case 130:
   enc->state = 131;
   enc->run = 2;
   enc->buf[1] = c;
   break;

  case 131:

   if (enc->run == 128)
   {
    rle_flush_diff(ctx, enc);
    enc->state = 130;
    enc->run = 1;
    enc->buf[0] = c;
   }

   else if ((enc->run >= 2) && (c == enc->buf[enc->run-1]) && (c == enc->buf[enc->run-2]))
   {
    if (enc->run >= 3) {
     enc->run -= 2;
     rle_flush_diff(ctx, enc);
    }
    enc->state = 129;
    enc->run = 3;
    enc->buf[0] = c;
   }
   else
   {
    enc->buf[enc->run] = c;
    enc->run++;
   }
   break;

  case 129:
   if ((enc->run == 128) || (c != enc->buf[0]))
   {
    rle_flush_same(ctx, enc);
    enc->state = 130;
    enc->run = 1;
    enc->buf[0] = c;
   }
   else
   {
    enc->run++;
   }
  }
 }
}
