
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG ;
struct TYPE_12__ {int ReservedSectors; int SectorsPerFAT; int NumberOfFATs; int MediaDescriptor; int RootEntries; } ;
struct TYPE_10__ {int BootSignature; int * FileSystemType; int * VolumeLabel; int VolumeSerialNumber; } ;
struct TYPE_11__ {TYPE_1__ exbpb; int bpb; int * oemid; int * jump; } ;
typedef int* PUCHAR ;
typedef TYPE_2__* PDOS_PBR ;
typedef int DWORD ;
typedef TYPE_3__ DOS_BPB ;


 int CopyMemory (int *,TYPE_3__ const*,int) ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int FAT_DIR_ENTRY_SIZE ;
 int FillMemory (int*,int,int ) ;
 int GetTickCount () ;
 TYPE_3__* SelectDosBpb (int) ;
 int VFDTRACE (int ,char*) ;
 int VFD_BYTES_PER_SECTOR ;
 TYPE_3__ const* VFD_FILESYSTEM ;
 int VFD_FORMAT_FILL_DATA ;
 TYPE_3__ const* VFD_JUMP_CODE ;
 TYPE_3__ const* VFD_OEM_NAME ;
 int VFD_SECTOR_TO_BYTE (int) ;
 TYPE_3__ const* VFD_VOLUME_LABEL ;
 int ZeroMemory (int*,int) ;

DWORD FormatBufferFat(
 PUCHAR pBuffer,
 ULONG nSectors)
{
 const DOS_BPB *bpb;
 PDOS_PBR pbr;
 PUCHAR fat;
 USHORT idx;

 VFDTRACE(0,
  ("[VFD] VfdFormatImage - IN\n"));




 bpb = SelectDosBpb((USHORT)nSectors);

 if (!bpb) {
  VFDTRACE(0,
   ("[VFD] Unsupported media size %lu\n",
   nSectors));
  return ERROR_INVALID_PARAMETER;
 }




 FillMemory(pBuffer,
  VFD_SECTOR_TO_BYTE(nSectors),
  VFD_FORMAT_FILL_DATA);




 ZeroMemory(pBuffer, VFD_BYTES_PER_SECTOR);

 pbr = (PDOS_PBR)pBuffer;

 CopyMemory(pbr->jump, VFD_JUMP_CODE, sizeof(pbr->jump));
 CopyMemory(pbr->oemid, VFD_OEM_NAME, sizeof(pbr->oemid));
 CopyMemory(&pbr->bpb, bpb, sizeof(pbr->bpb));



 pbr->exbpb.BootSignature = 0x29;


 pbr->exbpb.VolumeSerialNumber = GetTickCount();

 CopyMemory(pbr->exbpb.VolumeLabel,
  VFD_VOLUME_LABEL, sizeof(pbr->exbpb.VolumeLabel));

 CopyMemory(pbr->exbpb.FileSystemType,
  VFD_FILESYSTEM, sizeof(pbr->exbpb.FileSystemType));



 *(pBuffer + VFD_BYTES_PER_SECTOR - 2) = 0x55;
 *(pBuffer + VFD_BYTES_PER_SECTOR - 1) = 0xaa;




 fat = pBuffer + VFD_SECTOR_TO_BYTE(bpb->ReservedSectors);

 ZeroMemory(
  fat,
  VFD_SECTOR_TO_BYTE(bpb->SectorsPerFAT * bpb->NumberOfFATs));




 for (idx = 0; idx < bpb->NumberOfFATs; idx++) {
  *fat = bpb->MediaDescriptor;
  *(fat + 1) = 0xff;
  *(fat + 2) = 0xff;

  fat += VFD_SECTOR_TO_BYTE(bpb->SectorsPerFAT);
 }




 ZeroMemory(fat, bpb->RootEntries * FAT_DIR_ENTRY_SIZE);

 VFDTRACE(0,
  ("[VFD] VfdFormatImage - OUT\n"));

 return ERROR_SUCCESS;
}
