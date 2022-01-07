
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PVOID ;
typedef scalar_t__ PSYSTEM_HANDLE_INFORMATION_EX ;
typedef int NTSTATUS ;


 int NT_SUCCESS (int ) ;
 int NtQuerySystemInformation ;
 int Ntdll ;
 int PF_INIT_OR_SET_STATUS (int ,int ) ;
 int PH_LARGE_BUFFER_SIZE ;
 int * PhAllocate (int) ;
 int PhFree (int *) ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int SystemExtendedHandleInformation ;
 int pfNtQuerySystemInformation (int ,int *,int,int *) ;

NTSTATUS PhEnumHandlesEx(PSYSTEM_HANDLE_INFORMATION_EX *Handles)
{
 static ULONG initialBufferSize = 0x10000;
 NTSTATUS status = STATUS_SUCCESS;
 PVOID buffer;
 ULONG bufferSize;

 PF_INIT_OR_SET_STATUS(NtQuerySystemInformation, Ntdll);
 if (!NT_SUCCESS(status))
  return status;

 bufferSize = initialBufferSize;
 buffer = PhAllocate(bufferSize);
 if (buffer == ((void*)0))
  return STATUS_NO_MEMORY;

 while ((status = pfNtQuerySystemInformation(SystemExtendedHandleInformation,
  buffer, bufferSize, ((void*)0))) == STATUS_INFO_LENGTH_MISMATCH) {
  PhFree(buffer);
  bufferSize *= 2;


  if (bufferSize > PH_LARGE_BUFFER_SIZE)
   return STATUS_INSUFFICIENT_RESOURCES;

  buffer = PhAllocate(bufferSize);
  if (buffer == ((void*)0))
   return STATUS_NO_MEMORY;
 }

 if (!NT_SUCCESS(status)) {
  PhFree(buffer);
  return status;
 }

 if (bufferSize <= 0x200000)
  initialBufferSize = bufferSize;
 *Handles = (PSYSTEM_HANDLE_INFORMATION_EX)buffer;

 return status;
}
