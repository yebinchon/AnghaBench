
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int fz_warn (int *,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
file_drop(fz_context *ctx, void *opaque)
{
 FILE *file = opaque;
 int n = fclose(file);
 if (n < 0)
  fz_warn(ctx, "cannot fclose: %s", strerror(errno));
}
