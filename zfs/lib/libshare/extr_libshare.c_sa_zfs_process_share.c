
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef int sa_share_t ;
typedef int sa_share_impl_t ;
typedef int sa_handle_t ;
typedef int sa_handle_impl_t ;
typedef int sa_group_t ;


 int B_FALSE ;
 int process_share (int ,int ,char*,int *,char*,char*,int *,char*,int ) ;

int
sa_zfs_process_share(sa_handle_t handle, sa_group_t group, sa_share_t share,
    char *mountpoint, char *proto, zprop_source_t source, char *shareopts,
    char *sourcestr, char *dataset)
{
 sa_handle_impl_t impl_handle = (sa_handle_impl_t)handle;
 sa_share_impl_t impl_share = (sa_share_impl_t)share;

 return (process_share(impl_handle, impl_share, mountpoint, ((void*)0),
     proto, shareopts, ((void*)0), dataset, B_FALSE));
}
