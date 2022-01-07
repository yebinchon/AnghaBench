
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int VFATFCB ;
struct TYPE_19__ {int IsFastIoPossible; int * Resource; int * PagingIoResource; } ;
struct TYPE_18__ {TYPE_7__* self; } ;
struct TYPE_17__ {TYPE_7__* self; int Hash; } ;
struct TYPE_15__ {int Attrib; } ;
struct TYPE_14__ {int Attrib; } ;
struct TYPE_16__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_20__ {int ParentListHead; TYPE_6__ RFCB; int MainResource; int PagingIoResource; int LastMutex; int FileLock; TYPE_5__ ShortHash; TYPE_4__ Hash; int PathNameU; TYPE_3__ entry; int * Attributes; } ;
struct TYPE_13__ {int FcbLookasideList; } ;
typedef TYPE_7__* PVFATFCB ;
typedef int PUNICODE_STRING ;
typedef int PDEVICE_EXTENSION ;


 int DPRINT (char*,int ) ;
 TYPE_7__* ExAllocateFromNPagedLookasideList (int *) ;
 int ExInitializeFastMutex (int *) ;
 int ExInitializeResourceLite (int *) ;
 int FastIoIsNotPossible ;
 int FsRtlInitializeFileLock (int *,int *,int *) ;
 int InitializeListHead (int *) ;
 int RtlZeroMemory (TYPE_7__*,int) ;
 TYPE_10__* VfatGlobalData ;
 int vfatInitFcb (TYPE_7__*,int ) ;
 int vfatNameHash (int ,int *) ;
 scalar_t__ vfatVolumeIsFatX (int ) ;

PVFATFCB
vfatNewFCB(
    PDEVICE_EXTENSION pVCB,
    PUNICODE_STRING pFileNameU)
{
    PVFATFCB rcFCB;

    DPRINT("'%wZ'\n", pFileNameU);

    rcFCB = ExAllocateFromNPagedLookasideList(&VfatGlobalData->FcbLookasideList);
    if (rcFCB == ((void*)0))
    {
        return ((void*)0);
    }
    RtlZeroMemory(rcFCB, sizeof(VFATFCB));
    vfatInitFcb(rcFCB, pFileNameU);
    if (vfatVolumeIsFatX(pVCB))
        rcFCB->Attributes = &rcFCB->entry.FatX.Attrib;
    else
        rcFCB->Attributes = &rcFCB->entry.Fat.Attrib;
    rcFCB->Hash.Hash = vfatNameHash(0, &rcFCB->PathNameU);
    rcFCB->Hash.self = rcFCB;
    rcFCB->ShortHash.self = rcFCB;
    ExInitializeResourceLite(&rcFCB->PagingIoResource);
    ExInitializeResourceLite(&rcFCB->MainResource);
    FsRtlInitializeFileLock(&rcFCB->FileLock, ((void*)0), ((void*)0));
    ExInitializeFastMutex(&rcFCB->LastMutex);
    rcFCB->RFCB.PagingIoResource = &rcFCB->PagingIoResource;
    rcFCB->RFCB.Resource = &rcFCB->MainResource;
    rcFCB->RFCB.IsFastIoPossible = FastIoIsNotPossible;
    InitializeListHead(&rcFCB->ParentListHead);

    return rcFCB;
}
