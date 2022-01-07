
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bp; int ep; int wp; int state; int (* write ) (int *,int ,char const*,size_t) ;} ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int memcpy (int,char const*,size_t) ;
 int stub1 (int *,int ,int,int) ;
 int stub2 (int *,int ,char const*,size_t) ;
 int stub3 (int *,int ,int,int) ;
 int stub4 (int *,int ,char const*,size_t) ;

void
fz_write_data(fz_context *ctx, fz_output *out, const void *data_, size_t size)
{
 const char *data = data_;

 if (out->bp)
 {
  if (size >= (size_t) (out->ep - out->bp))
  {
   if (out->wp > out->bp)
   {
    out->write(ctx, out->state, out->bp, out->wp - out->bp);
    out->wp = out->bp;
   }
   out->write(ctx, out->state, data, size);
  }
  else if (out->wp + size <= out->ep)
  {
   memcpy(out->wp, data, size);
   out->wp += size;
  }
  else
  {
   size_t n = out->ep - out->wp;
   memcpy(out->wp, data, n);
   out->write(ctx, out->state, out->bp, out->ep - out->bp);
   memcpy(out->bp, data + n, size - n);
   out->wp = out->bp + size - n;
  }
 }
 else
 {
  out->write(ctx, out->state, data, size);
 }
}
