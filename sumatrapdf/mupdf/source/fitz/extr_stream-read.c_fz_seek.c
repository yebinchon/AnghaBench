
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ eof; int (* seek ) (int *,TYPE_1__*,scalar_t__,int) ;scalar_t__ avail; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;


 scalar_t__ EOF ;
 scalar_t__ fz_read_byte (int *,TYPE_1__*) ;
 scalar_t__ fz_tell (int *,TYPE_1__*) ;
 int fz_warn (int *,char*) ;
 int stub1 (int *,TYPE_1__*,scalar_t__,int) ;

void
fz_seek(fz_context *ctx, fz_stream *stm, int64_t offset, int whence)
{
 stm->avail = 0;
 if (stm->seek)
 {
  if (whence == 1)
  {
   offset += fz_tell(ctx, stm);
   whence = 0;
  }
  stm->seek(ctx, stm, offset, whence);
  stm->eof = 0;
 }
 else if (whence != 2)
 {
  if (whence == 0)
   offset -= fz_tell(ctx, stm);
  if (offset < 0)
   fz_warn(ctx, "cannot seek backwards");

  while (offset-- > 0)
  {
   if (fz_read_byte(ctx, stm) == EOF)
   {
    fz_warn(ctx, "seek failed");
    break;
   }
  }
 }
 else
  fz_warn(ctx, "cannot seek");
}
