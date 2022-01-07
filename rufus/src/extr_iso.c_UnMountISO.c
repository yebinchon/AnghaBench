
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DETACH_VIRTUAL_DISK_FLAG_NONE ;
 int DetachVirtualDisk ;
 int * INVALID_HANDLE_VALUE ;
 int PF_INIT_OR_OUT (int ,int ) ;
 int VirtDisk ;
 int * mounted_handle ;
 int pfDetachVirtualDisk (int *,int ,int ) ;
 scalar_t__* physical_path ;
 int safe_closehandle (int *) ;

void UnMountISO(void)
{
 PF_INIT_OR_OUT(DetachVirtualDisk, VirtDisk);

 if ((mounted_handle == ((void*)0)) || (mounted_handle == INVALID_HANDLE_VALUE))
  goto out;

 pfDetachVirtualDisk(mounted_handle, DETACH_VIRTUAL_DISK_FLAG_NONE, 0);
 safe_closehandle(mounted_handle);
out:
 physical_path[0] = 0;
}
