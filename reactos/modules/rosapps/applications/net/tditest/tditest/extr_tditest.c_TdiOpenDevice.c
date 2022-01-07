
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int ULONG ;
typedef int PWSTR ;
typedef int PVOID ;
typedef int * PHANDLE ;
typedef int PFILE_OBJECT ;
typedef int PFILE_FULL_EA_INFORMATION ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;


 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_OPEN_IF ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KernelMode ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int ObReferenceObjectByHandle (int ,int,int *,int ,int *,int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 int TDI_DbgPrint (int ,char*) ;
 int ZwClose (int ) ;
 int ZwCreateFile (int *,int,int *,int *,int ,int ,int,int ,int ,int ,int ) ;

NTSTATUS TdiOpenDevice(
    PWSTR Protocol,
    ULONG EaLength,
    PFILE_FULL_EA_INFORMATION EaInfo,
    PHANDLE Handle,
    PFILE_OBJECT *Object)
{
 OBJECT_ATTRIBUTES Attr;
 IO_STATUS_BLOCK Iosb;
 UNICODE_STRING Name;
 NTSTATUS Status;

 RtlInitUnicodeString(&Name, Protocol);
 InitializeObjectAttributes(
  &Attr,
  &Name,
  OBJ_CASE_INSENSITIVE,
  ((void*)0),
  ((void*)0));

 Status = ZwCreateFile(
  Handle,
  GENERIC_READ | GENERIC_WRITE,
  &Attr,
  &Iosb,
  0,
  FILE_ATTRIBUTE_NORMAL,
  FILE_SHARE_READ | FILE_SHARE_WRITE,
  FILE_OPEN_IF,
  0,
  EaInfo,
  EaLength);

 if (NT_SUCCESS(Status))
  {
   Status = ObReferenceObjectByHandle(
    *Handle,
    GENERIC_READ | GENERIC_WRITE,
    ((void*)0),
    KernelMode,
    (PVOID*)Object,
    ((void*)0));

   if (!NT_SUCCESS(Status))
    {
     TDI_DbgPrint(MIN_TRACE, ("ObReferenceObjectByHandle() failed with status (0x%X).\n", Status));
     ZwClose(*Handle);
    }
  }
 else
  {
   TDI_DbgPrint(MIN_TRACE, ("ZwCreateFile() failed with status (0x%X)\n", Status));
  }

    return Status;
}
