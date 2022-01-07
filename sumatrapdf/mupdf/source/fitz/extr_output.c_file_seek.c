
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int fz_context ;
typedef int FILE ;


 int FZ_ERROR_GENERIC ;
 int _fseeki64 (int *,int ,int) ;
 int errno ;
 int fseeko (int *,int ,int) ;
 int fz_throw (int *,int ,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
file_seek(fz_context *ctx, void *opaque, int64_t off, int whence)
{
 FILE *file = opaque;



 int n = fseeko(file, off, whence);

 if (n < 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot fseek: %s", strerror(errno));
}
