
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ zip_entry ;
struct TYPE_6__ {int count; TYPE_1__* entries; } ;
typedef TYPE_2__ fz_zip_archive ;
typedef int fz_context ;


 int fz_strcasecmp (char const*,int ) ;

__attribute__((used)) static zip_entry *lookup_zip_entry(fz_context *ctx, fz_zip_archive *zip, const char *name)
{
 int i;
 if (name[0] == '/')
  ++name;
 for (i = 0; i < zip->count; i++)
  if (!fz_strcasecmp(name, zip->entries[i].name))
   return &zip->entries[i];
 return ((void*)0);
}
