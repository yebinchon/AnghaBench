
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int dsl_get_bookmarks (char const*,int *,int *) ;

__attribute__((used)) static int
zfs_ioc_get_bookmarks(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 return (dsl_get_bookmarks(fsname, innvl, outnvl));
}
