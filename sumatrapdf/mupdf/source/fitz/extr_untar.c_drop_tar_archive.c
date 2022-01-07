
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; TYPE_2__* entries; } ;
typedef TYPE_1__ fz_tar_archive ;
typedef int fz_context ;
typedef int fz_archive ;
struct TYPE_4__ {struct TYPE_4__* name; } ;


 int fz_free (int *,TYPE_2__*) ;

__attribute__((used)) static void drop_tar_archive(fz_context *ctx, fz_archive *arch)
{
 fz_tar_archive *tar = (fz_tar_archive *) arch;
 int i;
 for (i = 0; i < tar->count; ++i)
  fz_free(ctx, tar->entries[i].name);
 fz_free(ctx, tar->entries);
}
