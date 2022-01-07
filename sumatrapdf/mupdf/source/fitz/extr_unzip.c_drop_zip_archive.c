
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; TYPE_2__* entries; } ;
typedef TYPE_1__ fz_zip_archive ;
typedef int fz_context ;
typedef int fz_archive ;
struct TYPE_4__ {struct TYPE_4__* name; } ;


 int fz_free (int *,TYPE_2__*) ;

__attribute__((used)) static void drop_zip_archive(fz_context *ctx, fz_archive *arch)
{
 fz_zip_archive *zip = (fz_zip_archive *) arch;
 int i;
 for (i = 0; i < zip->count; ++i)
  fz_free(ctx, zip->entries[i].name);
 fz_free(ctx, zip->entries);
}
