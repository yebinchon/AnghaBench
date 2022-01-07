
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ tar_entry ;
struct TYPE_6__ {int count; TYPE_1__* entries; } ;
typedef TYPE_2__ fz_tar_archive ;
typedef int fz_context ;


 int fz_strcasecmp (char const*,int ) ;

__attribute__((used)) static tar_entry *lookup_tar_entry(fz_context *ctx, fz_tar_archive *tar, const char *name)
{
 int i;
 for (i = 0; i < tar->count; i++)
  if (!fz_strcasecmp(name, tar->entries[i].name))
   return &tar->entries[i];
 return ((void*)0);
}
