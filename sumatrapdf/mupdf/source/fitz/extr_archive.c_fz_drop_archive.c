
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {int file; int (* drop_archive ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_archive ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*) ;

void
fz_drop_archive(fz_context *ctx, fz_archive *arch)
{
 if (!arch)
  return;

 if (arch->drop_archive)
  arch->drop_archive(ctx, arch);
 fz_drop_stream(ctx, arch->file);
 fz_free(ctx, arch);
}
