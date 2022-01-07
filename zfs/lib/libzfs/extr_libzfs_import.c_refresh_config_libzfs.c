
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int * refresh_config (int *,int *) ;

__attribute__((used)) static nvlist_t *
refresh_config_libzfs(void *handle, nvlist_t *tryconfig)
{
 return (refresh_config((libzfs_handle_t *)handle, tryconfig));
}
