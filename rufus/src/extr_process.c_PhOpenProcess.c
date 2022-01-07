
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * UniqueThread; scalar_t__ UniqueProcess; } ;
typedef int * PHANDLE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG_PTR ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ CLIENT_ID ;
typedef int ACCESS_MASK ;


 scalar_t__ GetCurrentProcessId () ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int NtOpenProcess ;
 int Ntdll ;
 int PF_INIT_OR_SET_STATUS (int ,int ) ;
 int STATUS_SUCCESS ;
 int pfNtOpenProcess (int *,int ,int *,TYPE_1__*) ;

NTSTATUS PhOpenProcess(PHANDLE ProcessHandle, ACCESS_MASK DesiredAccess, HANDLE ProcessId)
{
 NTSTATUS status = STATUS_SUCCESS;
 OBJECT_ATTRIBUTES objectAttributes;
 CLIENT_ID clientId;

 if ((LONG_PTR)ProcessId == (LONG_PTR)GetCurrentProcessId()) {
  *ProcessHandle = NtCurrentProcess();
  return 0;
 }

 PF_INIT_OR_SET_STATUS(NtOpenProcess, Ntdll);
 if (!NT_SUCCESS(status))
  return status;

 clientId.UniqueProcess = ProcessId;
 clientId.UniqueThread = ((void*)0);

 InitializeObjectAttributes(&objectAttributes, ((void*)0), 0, ((void*)0), ((void*)0));
 status = pfNtOpenProcess(ProcessHandle, DesiredAccess, &objectAttributes, &clientId);

 return status;
}
