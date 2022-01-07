
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AuthenticationPackage; int * LsaHandle; } ;
typedef TYPE_1__* PGINA_CONTEXT ;
typedef int PANSI_STRING ;
typedef int NTSTATUS ;
typedef int LSA_STRING ;
typedef int LSA_OPERATIONAL_MODE ;


 int ERR (char*,int ) ;
 int LsaLookupAuthenticationPackage (int *,int *,int *) ;
 int LsaRegisterLogonProcess (int *,int **,int *) ;
 char* MSV1_0_PACKAGE_NAME ;
 int NT_SUCCESS (int ) ;
 int RtlInitAnsiString (int ,char*) ;
 int STATUS_SUCCESS ;

NTSTATUS
ConnectToLsa(
    PGINA_CONTEXT pgContext)
{
    LSA_STRING LogonProcessName;
    LSA_STRING PackageName;
    LSA_OPERATIONAL_MODE SecurityMode = 0;
    NTSTATUS Status;


    if (pgContext->LsaHandle != ((void*)0))
        return STATUS_SUCCESS;


    RtlInitAnsiString((PANSI_STRING)&LogonProcessName,
                      "MSGINA");

    Status = LsaRegisterLogonProcess(&LogonProcessName,
                                     &pgContext->LsaHandle,
                                     &SecurityMode);
    if (!NT_SUCCESS(Status))
    {
        ERR("LsaRegisterLogonProcess failed (Status 0x%08lx)\n", Status);
        return Status;
    }


    RtlInitAnsiString((PANSI_STRING)&PackageName,
                      MSV1_0_PACKAGE_NAME);

    Status = LsaLookupAuthenticationPackage(pgContext->LsaHandle,
                                            &PackageName,
                                            &pgContext->AuthenticationPackage);
    if (!NT_SUCCESS(Status))
    {
        ERR("LsaLookupAuthenticationPackage failed (Status 0x%08lx)\n", Status);
    }

    return Status;
}
