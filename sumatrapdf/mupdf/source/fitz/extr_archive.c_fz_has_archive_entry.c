
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int (* has_entry ) (int *,TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ fz_archive ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int stub1 (int *,TYPE_1__*,char const*) ;

int
fz_has_archive_entry(fz_context *ctx, fz_archive *arch, const char *name)
{
 if (!arch->has_entry)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot check if archive has entry");
 return arch->has_entry(ctx, arch, name);
}
