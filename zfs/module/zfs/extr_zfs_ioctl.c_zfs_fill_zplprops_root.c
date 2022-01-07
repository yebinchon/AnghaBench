
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 scalar_t__ ZPL_VERSION ;
 scalar_t__ ZPL_VERSION_FUID ;
 scalar_t__ ZPL_VERSION_SA ;
 int zfs_fill_zplprops_impl (int *,scalar_t__,int,int,int *,int *,int*) ;
 scalar_t__ zfs_zpl_version_map (scalar_t__) ;

__attribute__((used)) static int
zfs_fill_zplprops_root(uint64_t spa_vers, nvlist_t *createprops,
    nvlist_t *zplprops, boolean_t *is_ci)
{
 boolean_t fuids_ok;
 boolean_t sa_ok;
 uint64_t zplver = ZPL_VERSION;
 int error;

 zplver = zfs_zpl_version_map(spa_vers);
 fuids_ok = (zplver >= ZPL_VERSION_FUID);
 sa_ok = (zplver >= ZPL_VERSION_SA);

 error = zfs_fill_zplprops_impl(((void*)0), zplver, fuids_ok, sa_ok,
     createprops, zplprops, is_ci);
 return (error);
}
