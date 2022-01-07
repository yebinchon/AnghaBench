
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int spa_keystore_unload_wkey (char const*) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static int
zfs_ioc_unload_key(const char *dsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int ret = 0;

 if (strchr(dsname, '@') != ((void*)0) || strchr(dsname, '%') != ((void*)0)) {
  ret = (SET_ERROR(EINVAL));
  goto out;
 }

 ret = spa_keystore_unload_wkey(dsname);
 if (ret != 0)
  goto out;

out:
 return (ret);
}
