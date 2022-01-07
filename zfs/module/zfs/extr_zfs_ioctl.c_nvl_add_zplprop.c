
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;


 int VERIFY (int) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 int zfs_get_zplprop (int *,int ,int *) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
nvl_add_zplprop(objset_t *os, nvlist_t *props, zfs_prop_t prop)
{
 uint64_t value;
 int error;





 if ((error = zfs_get_zplprop(os, prop, &value)) != 0)
  return (error);
 VERIFY(nvlist_add_uint64(props, zfs_prop_to_name(prop), value) == 0);
 return (0);
}
