#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_9__ {scalar_t__ FatType; } ;
struct TYPE_13__ {TYPE_1__ FatInfo; } ;
struct TYPE_11__ {int FirstCluster; int FirstClusterHigh; } ;
struct TYPE_10__ {int FirstCluster; } ;
struct TYPE_12__ {TYPE_3__ Fat; TYPE_2__ FatX; } ;
typedef  TYPE_4__* PDIR_ENTRY ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;

/* Variables and functions */
 scalar_t__ FAT32 ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 

ULONG
FUNC1(
    PDEVICE_EXTENSION pDeviceExt,
    PDIR_ENTRY pFatDirEntry)
{
    ULONG cluster;

    if (pDeviceExt->FatInfo.FatType == FAT32)
    {
        cluster = pFatDirEntry->Fat.FirstCluster |
                 (pFatDirEntry->Fat.FirstClusterHigh << 16);
    }
    else if (FUNC0(pDeviceExt))
    {
        cluster = pFatDirEntry->FatX.FirstCluster;
    }
    else
    {
        cluster = pFatDirEntry->Fat.FirstCluster;
    }

    return  cluster;
}