
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fi_uname; int fi_zfs_mod_supported; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef size_t spa_feature_t ;


 int ENOENT ;
 size_t SPA_FEATURES ;
 TYPE_1__* spa_feature_table ;
 scalar_t__ strcmp (char const*,int ) ;

int
zfeature_lookup_name(const char *name, spa_feature_t *res)
{
 for (spa_feature_t i = 0; i < SPA_FEATURES; i++) {
  zfeature_info_t *feature = &spa_feature_table[i];
  if (!feature->fi_zfs_mod_supported)
   continue;
  if (strcmp(name, feature->fi_uname) == 0) {
   if (res != ((void*)0))
    *res = i;
   return (0);
  }
 }

 return (ENOENT);
}
