
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t rp; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;


 size_t fz_available (int *,TYPE_1__*,size_t) ;
 int memcpy (unsigned char*,size_t,size_t) ;

size_t
fz_read(fz_context *ctx, fz_stream *stm, unsigned char *buf, size_t len)
{
 size_t count, n;

 count = 0;
 do
 {
  n = fz_available(ctx, stm, len);
  if (n > len)
   n = len;
  if (n == 0)
   break;

  memcpy(buf, stm->rp, n);
  stm->rp += n;
  buf += n;
  count += n;
  len -= n;
 }
 while (len > 0);

 return count;
}
