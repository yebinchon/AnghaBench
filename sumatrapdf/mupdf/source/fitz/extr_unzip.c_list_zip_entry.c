
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_1__* entries; } ;
typedef TYPE_2__ fz_zip_archive ;
typedef int fz_context ;
typedef int fz_archive ;
struct TYPE_3__ {char const* name; } ;



__attribute__((used)) static const char *list_zip_entry(fz_context *ctx, fz_archive *arch, int idx)
{
 fz_zip_archive *zip = (fz_zip_archive *) arch;
 if (idx < 0 || idx >= zip->count)
  return ((void*)0);
 return zip->entries[idx].name;
}
