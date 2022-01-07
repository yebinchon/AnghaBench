
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
typedef TYPE_1__ fz_zip_archive ;
typedef int fz_context ;
typedef int fz_archive ;



__attribute__((used)) static int count_zip_entries(fz_context *ctx, fz_archive *arch)
{
 fz_zip_archive *zip = (fz_zip_archive *) arch;
 return zip->count;
}
