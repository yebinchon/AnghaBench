
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {char const* (* list_entry ) (int *,TYPE_1__*,int) ;} ;
typedef TYPE_1__ fz_archive ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 char const* stub1 (int *,TYPE_1__*,int) ;

const char *
fz_list_archive_entry(fz_context *ctx, fz_archive *arch, int idx)
{
 if (!arch->list_entry)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot list archive entries");
 return arch->list_entry(ctx, arch, idx);
}
