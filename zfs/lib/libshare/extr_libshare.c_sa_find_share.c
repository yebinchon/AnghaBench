
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_share_t ;
typedef scalar_t__ sa_handle_t ;
typedef int sa_handle_impl_t ;


 scalar_t__ find_share (int ,char*) ;

sa_share_t
sa_find_share(sa_handle_t handle, char *sharepath)
{
 return ((sa_share_t)find_share((sa_handle_impl_t)handle, sharepath));
}
