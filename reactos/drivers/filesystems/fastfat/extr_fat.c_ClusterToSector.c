
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_4__ {int dataStart; int SectorsPerCluster; } ;
struct TYPE_5__ {TYPE_1__ FatInfo; } ;
typedef TYPE_2__* PDEVICE_EXTENSION ;



ULONGLONG
ClusterToSector(
    PDEVICE_EXTENSION DeviceExt,
    ULONG Cluster)
{
    return DeviceExt->FatInfo.dataStart +
           ((ULONGLONG)(Cluster - 2) * DeviceExt->FatInfo.SectorsPerCluster);

}
