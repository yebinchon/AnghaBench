
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zvol_state_handle_t ;
struct TYPE_7__ {int z_sb; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int deactivate_super (int ) ;
 int * dmu_objset_ds (int ) ;
 int dsl_dataset_rollback (char const*,char*,TYPE_1__*,int *) ;
 scalar_t__ getzfsvfs (char const*,TYPE_1__**) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 char* strchr (char*,char) ;
 scalar_t__ zfs_component_namecheck (char const*,int *,int *) ;
 int zfs_resume_fs (TYPE_1__*,int *) ;
 int zfs_suspend_fs (TYPE_1__*) ;
 int zvol_resume (int *) ;
 int * zvol_suspend (char const*) ;
 TYPE_1__* zvol_tag (int *) ;

__attribute__((used)) static int
zfs_ioc_rollback(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 zfsvfs_t *zfsvfs;
 zvol_state_handle_t *zv;
 char *target = ((void*)0);
 int error;

 (void) nvlist_lookup_string(innvl, "target", &target);
 if (target != ((void*)0)) {
  const char *cp = strchr(target, '@');





  if (cp == ((void*)0) ||
      zfs_component_namecheck(cp + 1, ((void*)0), ((void*)0)) != 0)
   return (SET_ERROR(EINVAL));
 }

 if (getzfsvfs(fsname, &zfsvfs) == 0) {
  dsl_dataset_t *ds;

  ds = dmu_objset_ds(zfsvfs->z_os);
  error = zfs_suspend_fs(zfsvfs);
  if (error == 0) {
   int resume_err;

   error = dsl_dataset_rollback(fsname, target, zfsvfs,
       outnvl);
   resume_err = zfs_resume_fs(zfsvfs, ds);
   error = error ? error : resume_err;
  }
  deactivate_super(zfsvfs->z_sb);
 } else if ((zv = zvol_suspend(fsname)) != ((void*)0)) {
  error = dsl_dataset_rollback(fsname, target, zvol_tag(zv),
      outnvl);
  zvol_resume(zv);
 } else {
  error = dsl_dataset_rollback(fsname, target, ((void*)0), outnvl);
 }
 return (error);
}
