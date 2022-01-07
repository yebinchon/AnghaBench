
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int cred_t ;


 int ENOENT ;
 int EPERM ;
 scalar_t__ INGLOBALZONE (int ) ;
 int SET_ERROR (int ) ;
 int curproc ;
 scalar_t__ secpolicy_zfs (int *) ;
 int zone_dataset_visible (char const*,int*) ;

__attribute__((used)) static int
zfs_dozonecheck_impl(const char *dataset, uint64_t zoned, cred_t *cr)
{
 int writable = 1;





 if (!INGLOBALZONE(curproc) &&
     !zone_dataset_visible(dataset, &writable))
  return (SET_ERROR(ENOENT));

 if (INGLOBALZONE(curproc)) {




  if (secpolicy_zfs(cr) && zoned)
   return (SET_ERROR(EPERM));
 } else {



  if (!zoned)
   return (SET_ERROR(EPERM));


  if (!writable)
   return (SET_ERROR(EPERM));
 }
 return (0);
}
