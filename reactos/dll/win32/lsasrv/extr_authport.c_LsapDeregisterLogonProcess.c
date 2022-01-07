
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ConnectionHandle; int ClientProcessHandle; int Entry; } ;
typedef int PLSA_API_MSG ;
typedef TYPE_1__* PLSAP_LOGON_CONTEXT ;
typedef int NTSTATUS ;


 int NtClose (int ) ;
 int RemoveHeadList (int *) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;
 int STATUS_SUCCESS ;
 int TRACE (char*,int ,TYPE_1__*) ;

__attribute__((used)) static NTSTATUS
LsapDeregisterLogonProcess(PLSA_API_MSG RequestMsg,
                           PLSAP_LOGON_CONTEXT LogonContext)
{
    TRACE("LsapDeregisterLogonProcess(%p %p)\n", RequestMsg, LogonContext);

    RemoveHeadList(&LogonContext->Entry);

    NtClose(LogonContext->ClientProcessHandle);
    NtClose(LogonContext->ConnectionHandle);

    RtlFreeHeap(RtlGetProcessHeap(), 0, LogonContext);

    return STATUS_SUCCESS;
}
