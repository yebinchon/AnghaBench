
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {scalar_t__ FatType; } ;
struct TYPE_13__ {TYPE_1__ FatInfo; } ;
struct TYPE_11__ {int FirstCluster; int FirstClusterHigh; } ;
struct TYPE_10__ {int FirstCluster; } ;
struct TYPE_12__ {TYPE_3__ Fat; TYPE_2__ FatX; } ;
typedef TYPE_4__* PDIR_ENTRY ;
typedef TYPE_5__* PDEVICE_EXTENSION ;


 scalar_t__ FAT32 ;
 scalar_t__ vfatVolumeIsFatX (TYPE_5__*) ;

ULONG
vfatDirEntryGetFirstCluster(
    PDEVICE_EXTENSION pDeviceExt,
    PDIR_ENTRY pFatDirEntry)
{
    ULONG cluster;

    if (pDeviceExt->FatInfo.FatType == FAT32)
    {
        cluster = pFatDirEntry->Fat.FirstCluster |
                 (pFatDirEntry->Fat.FirstClusterHigh << 16);
    }
    else if (vfatVolumeIsFatX(pDeviceExt))
    {
        cluster = pFatDirEntry->FatX.FirstCluster;
    }
    else
    {
        cluster = pFatDirEntry->Fat.FirstCluster;
    }

    return cluster;
}
