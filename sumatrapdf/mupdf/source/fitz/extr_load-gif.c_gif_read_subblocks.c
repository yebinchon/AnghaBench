
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int dummy; } ;
typedef int fz_context ;
typedef int fz_buffer ;


 int FZ_ERROR_GENERIC ;
 int fz_append_data (int *,int *,unsigned char const*,int) ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static const unsigned char *
gif_read_subblocks(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end, fz_buffer *buf)
{
 int len;

 do
 {
  if (end - p < 1)
   fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in data subblocks in gif image");
  len = *p;
  p += 1;

  if (len > 0)
  {
   if (end - p < len)
    fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in data subblock in gif image");
   if (buf)
    fz_append_data(ctx, buf, p, len);
   p += len;
  }
 } while (len > 0);

 return p;
}
