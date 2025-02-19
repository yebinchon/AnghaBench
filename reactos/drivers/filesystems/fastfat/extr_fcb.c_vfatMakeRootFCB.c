
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_34__ {int QuadPart; } ;
struct TYPE_33__ {int QuadPart; } ;
struct TYPE_32__ {int QuadPart; } ;
struct TYPE_31__ {int Hash; } ;
struct TYPE_30__ {int Hash; } ;
struct TYPE_29__ {int rootDirectorySectors; int BytesPerSector; scalar_t__ FatType; int RootCluster; scalar_t__ BytesPerCluster; } ;
struct TYPE_27__ {int FileSize; unsigned short FirstCluster; unsigned short FirstClusterHigh; void* Attrib; int ShortName; } ;
struct TYPE_26__ {int FileSize; int FirstCluster; void* Attrib; int Filename; } ;
struct TYPE_28__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_25__ {TYPE_11__* RootFcb; TYPE_4__ FatInfo; } ;
struct TYPE_23__ {int IsFastIoPossible; TYPE_9__ AllocationSize; TYPE_8__ ValidDataLength; TYPE_7__ FileSize; } ;
struct TYPE_24__ {int RefCount; TYPE_10__ RFCB; scalar_t__ dirIndex; TYPE_6__ Hash; TYPE_5__ ShortHash; TYPE_3__ entry; } ;
typedef TYPE_11__* PVFATFCB ;
typedef TYPE_12__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ASSERT (int ) ;
 int FALSE ;
 scalar_t__ FAT32 ;
 void* FILE_ATTRIBUTE_DIRECTORY ;
 int FastIoIsNotPossible ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NextCluster (TYPE_12__*,int,int*,int ) ;
 int RTL_CONSTANT_STRING (char*) ;
 int STATUS_SUCCESS ;
 int memset (int ,char,int) ;
 int vfatAddFCBToTable (TYPE_12__*,TYPE_11__*) ;
 int vfatFCBInitializeCacheFromVolume (TYPE_12__*,TYPE_11__*) ;
 TYPE_11__* vfatNewFCB (TYPE_12__*,int *) ;
 scalar_t__ vfatVolumeIsFatX (TYPE_12__*) ;

PVFATFCB
vfatMakeRootFCB(
    PDEVICE_EXTENSION pVCB)
{
    PVFATFCB FCB;
    ULONG FirstCluster, CurrentCluster, Size = 0;
    NTSTATUS Status = STATUS_SUCCESS;
    UNICODE_STRING NameU = RTL_CONSTANT_STRING(L"\\");

    ASSERT(pVCB->RootFcb == ((void*)0));

    FCB = vfatNewFCB(pVCB, &NameU);
    if (vfatVolumeIsFatX(pVCB))
    {
        memset(FCB->entry.FatX.Filename, ' ', 42);
        FCB->entry.FatX.FileSize = pVCB->FatInfo.rootDirectorySectors * pVCB->FatInfo.BytesPerSector;
        FCB->entry.FatX.Attrib = FILE_ATTRIBUTE_DIRECTORY;
        FCB->entry.FatX.FirstCluster = 1;
        Size = pVCB->FatInfo.rootDirectorySectors * pVCB->FatInfo.BytesPerSector;
    }
    else
    {
        memset(FCB->entry.Fat.ShortName, ' ', 11);
        FCB->entry.Fat.FileSize = pVCB->FatInfo.rootDirectorySectors * pVCB->FatInfo.BytesPerSector;
        FCB->entry.Fat.Attrib = FILE_ATTRIBUTE_DIRECTORY;
        if (pVCB->FatInfo.FatType == FAT32)
        {
            CurrentCluster = FirstCluster = pVCB->FatInfo.RootCluster;
            FCB->entry.Fat.FirstCluster = (unsigned short)(FirstCluster & 0xffff);
            FCB->entry.Fat.FirstClusterHigh = (unsigned short)(FirstCluster >> 16);

            while (CurrentCluster != 0xffffffff && NT_SUCCESS(Status))
            {
                Size += pVCB->FatInfo.BytesPerCluster;
                Status = NextCluster (pVCB, FirstCluster, &CurrentCluster, FALSE);
            }
        }
        else
        {
            FCB->entry.Fat.FirstCluster = 1;
            Size = pVCB->FatInfo.rootDirectorySectors * pVCB->FatInfo.BytesPerSector;
        }
    }
    FCB->ShortHash.Hash = FCB->Hash.Hash;
    FCB->RefCount = 2;
    FCB->dirIndex = 0;
    FCB->RFCB.FileSize.QuadPart = Size;
    FCB->RFCB.ValidDataLength.QuadPart = Size;
    FCB->RFCB.AllocationSize.QuadPart = Size;
    FCB->RFCB.IsFastIoPossible = FastIoIsNotPossible;

    vfatFCBInitializeCacheFromVolume(pVCB, FCB);
    vfatAddFCBToTable(pVCB, FCB);


    pVCB->RootFcb = FCB;

    return FCB;
}
