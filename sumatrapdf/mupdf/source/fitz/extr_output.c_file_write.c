
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int FILE ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fwrite (void const*,int,size_t,int *) ;
 int fz_throw (int *,int ,char*,int ) ;
 int putc (unsigned char,int *) ;
 int strerror (int ) ;

__attribute__((used)) static void
file_write(fz_context *ctx, void *opaque, const void *buffer, size_t count)
{
 FILE *file = opaque;
 size_t n;

 if (count == 0)
  return;

 if (count == 1)
 {
  int x = putc(((unsigned char*)buffer)[0], file);
  if (x == EOF && ferror(file))
   fz_throw(ctx, FZ_ERROR_GENERIC, "cannot fwrite: %s", strerror(errno));
  return;
 }

 n = fwrite(buffer, 1, count, file);
 if (n < count && ferror(file))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot fwrite: %s", strerror(errno));
}
