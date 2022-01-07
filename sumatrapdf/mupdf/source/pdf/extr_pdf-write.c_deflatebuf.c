
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uLongf ;
typedef scalar_t__ uLong ;
typedef int fz_context ;
typedef int fz_buffer ;


 int FZ_ERROR_GENERIC ;
 int Z_OK ;
 int compress (unsigned char*,scalar_t__*,unsigned char const*,scalar_t__) ;
 size_t compressBound (scalar_t__) ;
 int fz_drop_buffer (int *,int *) ;
 unsigned char* fz_malloc (int *,size_t) ;
 int * fz_new_buffer_from_data (int *,unsigned char*,size_t) ;
 int fz_resize_buffer (int *,int *,scalar_t__) ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static fz_buffer *deflatebuf(fz_context *ctx, const unsigned char *p, size_t n)
{
 fz_buffer *buf;
 uLongf csize;
 int t;
 uLong longN = (uLong)n;
 unsigned char *data;
 size_t cap;

 if (n != (size_t)longN)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Buffer too large to deflate");

 cap = compressBound(longN);
 data = fz_malloc(ctx, cap);
 buf = fz_new_buffer_from_data(ctx, data, cap);
 csize = (uLongf)cap;
 t = compress(data, &csize, p, longN);
 if (t != Z_OK)
 {
  fz_drop_buffer(ctx, buf);
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot deflate buffer");
 }
 fz_resize_buffer(ctx, buf, csize);
 return buf;
}
