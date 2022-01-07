
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int refs; scalar_t__ packed; } ;
typedef TYPE_1__ fz_path ;
typedef int fz_context ;


 scalar_t__ FZ_PATH_UNPACKED ;
 TYPE_1__* fz_keep_imp8 (int *,TYPE_1__*,int*) ;
 int fz_trim_path (int *,TYPE_1__*) ;

fz_path *
fz_keep_path(fz_context *ctx, const fz_path *pathc)
{
 fz_path *path = (fz_path *)pathc;

 if (path == ((void*)0))
  return ((void*)0);
 if (path->refs == 1 && path->packed == FZ_PATH_UNPACKED)
  fz_trim_path(ctx, path);
 return fz_keep_imp8(ctx, path, &path->refs);
}
