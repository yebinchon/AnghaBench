
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_handle_t ;
typedef int sa_handle_impl_t ;


 int update_sharetab (int ) ;

void
sa_update_sharetab_ts(sa_handle_t handle)
{
 sa_handle_impl_t impl_handle = (sa_handle_impl_t)handle;

 update_sharetab(impl_handle);
}
