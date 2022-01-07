
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int NumberOfDiskExtents; TYPE_3__* Extents; } ;
typedef TYPE_4__ VOLUME_DISK_EXTENTS ;
struct TYPE_8__ {int QuadPart; } ;
struct TYPE_12__ {int BytesPerSector; TYPE_1__ PartitionLba; int Handle; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_10__ {TYPE_2__ StartingOffset; } ;
typedef TYPE_5__ S_NTFSSECT_VOLINFO ;
typedef int DWORD ;
typedef int BOOL ;


 int DeviceIoControl (int ,int ,int *,int ,TYPE_4__*,int,int *,int *) ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS ;
 int M_ERR (char*) ;

__attribute__((used)) static DWORD NtfsSectGetVolumePartitionLba(S_NTFSSECT_VOLINFO * VolumeInfo) {
    BOOL ok;
    VOLUME_DISK_EXTENTS vol_disk_extents;
    DWORD output_size, rc;

    ok = DeviceIoControl(
        VolumeInfo->Handle,
        IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS,
        ((void*)0),
        0,
        &vol_disk_extents,
        sizeof vol_disk_extents,
        &output_size,
        ((void*)0)
      );
    rc = GetLastError();
    if (!ok) {
        M_ERR("Couldn't fetch volume disk extent(s)!");
        goto err_vol_disk_extents;
      }

    if (vol_disk_extents.NumberOfDiskExtents != 1) {
        M_ERR("Unsupported number of volume disk extents!");
        goto err_num_of_extents;
      }

    VolumeInfo->PartitionLba.QuadPart = (
        vol_disk_extents.Extents[0].StartingOffset.QuadPart /
        VolumeInfo->BytesPerSector
      );

    return ERROR_SUCCESS;

    err_num_of_extents:

    err_vol_disk_extents:

    return rc;
  }
