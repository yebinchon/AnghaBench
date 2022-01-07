
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int permset_namecheck (char const*,int *,int *) ;
 scalar_t__ zfs_deleg_canonicalize_perm (char const*) ;

__attribute__((used)) static int
zfs_valid_permission_name(const char *perm)
{
 if (zfs_deleg_canonicalize_perm(perm))
  return (0);

 return (permset_namecheck(perm, ((void*)0), ((void*)0)));
}
