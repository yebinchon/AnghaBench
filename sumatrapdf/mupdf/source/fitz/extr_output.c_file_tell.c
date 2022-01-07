
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int fz_context ;
typedef int FILE ;


 int FZ_ERROR_GENERIC ;
 int _ftelli64 (int *) ;
 int errno ;
 int ftello (int *) ;
 int fz_throw (int *,int ,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int64_t
file_tell(fz_context *ctx, void *opaque)
{
 FILE *file = opaque;



 int64_t off = ftello(file);

 if (off == -1)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot ftell: %s", strerror(errno));
 return off;
}
