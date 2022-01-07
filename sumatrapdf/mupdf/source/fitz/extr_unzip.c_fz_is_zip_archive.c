
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 size_t fz_read (int *,int *,unsigned char*,size_t) ;
 int fz_seek (int *,int *,int ,int ) ;
 scalar_t__ memcmp (unsigned char*,unsigned char const*,size_t) ;
 size_t nelem (unsigned char const*) ;

int
fz_is_zip_archive(fz_context *ctx, fz_stream *file)
{
 const unsigned char signature[4] = { 'P', 'K', 0x03, 0x04 };
 unsigned char data[4];
 size_t n;

 fz_seek(ctx, file, 0, 0);
 n = fz_read(ctx, file, data, nelem(data));
 if (n != nelem(signature))
  return 0;
 if (memcmp(data, signature, nelem(signature)))
  return 0;

 return 1;
}
