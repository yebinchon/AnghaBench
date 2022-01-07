
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ packed; struct TYPE_5__* coords; struct TYPE_5__* cmds; int refs; } ;
typedef TYPE_1__ fz_path ;
typedef int fz_context ;


 scalar_t__ FZ_PATH_PACKED_FLAT ;
 scalar_t__ FZ_PATH_UNPACKED ;
 scalar_t__ fz_drop_imp8 (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_path(fz_context *ctx, const fz_path *pathc)
{
 fz_path *path = (fz_path *)pathc;

 if (fz_drop_imp8(ctx, path, &path->refs))
 {
  if (path->packed != FZ_PATH_PACKED_FLAT)
  {
   fz_free(ctx, path->cmds);
   fz_free(ctx, path->coords);
  }
  if (path->packed == FZ_PATH_UNPACKED)
   fz_free(ctx, path);
 }
}
