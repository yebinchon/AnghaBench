
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int (* count_entries ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_archive ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int stub1 (int *,TYPE_1__*) ;

int
fz_count_archive_entries(fz_context *ctx, fz_archive *arch)
{
 if (!arch->count_entries)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot count archive entries");
 return arch->count_entries(ctx, arch);
}
