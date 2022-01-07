
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef int ANSI_STRING ;


 int LdrGetProcedureAddress (int ,int *,int ,int *) ;
 int LdrLoadDll (int *,int *,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int Old32Dll ;
 int RtlInitAnsiString (int *,int const) ;
 int RtlRaiseStatus (int ) ;

PVOID
LoadOle32Export(PVOID * BaseAddress, const PCHAR ProcedureName)
{
    NTSTATUS Status;
    ANSI_STRING ExportName;
    PVOID ProcedureAddress;


    Status = LdrLoadDll(((void*)0), ((void*)0), &Old32Dll, BaseAddress);
    if (!NT_SUCCESS(Status))
    {
        RtlRaiseStatus(Status);
    }

    RtlInitAnsiString(&ExportName, ProcedureName);


    Status = LdrGetProcedureAddress(*BaseAddress, &ExportName,
                                    0, &ProcedureAddress);
    if (!NT_SUCCESS(Status))
    {
        RtlRaiseStatus(Status);
    }


    return ProcedureAddress;
}
