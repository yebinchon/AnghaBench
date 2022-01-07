
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef int TokenInformation ;
struct TYPE_3__ {int AuthenticationId; } ;
typedef TYPE_1__ TOKEN_STATISTICS ;
typedef int * PLUID ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ HANDLE ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int NtClose (scalar_t__) ;
 int NtCurrentProcess () ;
 int NtCurrentThread () ;
 scalar_t__ NtOpenProcessToken (int ,int,scalar_t__*) ;
 scalar_t__ NtOpenThreadToken (int ,int,int ,scalar_t__*) ;
 scalar_t__ NtQueryInformationToken (scalar_t__,int ,TYPE_1__*,int,scalar_t__*) ;
 int READ_CONTROL ;
 int RtlCopyLuid (int *,int *) ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_NO_TOKEN ;
 int TOKEN_QUERY ;
 int TokenStatistics ;

NTSTATUS
GetCallerLuid(PLUID CallerLuid)
{
    NTSTATUS Status;
    HANDLE TokenHandle;
    ULONG ReturnLength;
    TOKEN_STATISTICS TokenInformation;


    if (CallerLuid == ((void*)0))
    {
        return STATUS_INVALID_PARAMETER;
    }


    TokenHandle = 0;
    ReturnLength = 0;
    Status = NtOpenThreadToken(NtCurrentThread(),
                               READ_CONTROL | TOKEN_QUERY,
                               FALSE, &TokenHandle);

    if (Status == STATUS_NO_TOKEN)
    {
        Status = NtOpenProcessToken(NtCurrentProcess(),
                                    READ_CONTROL | TOKEN_QUERY,
                                    &TokenHandle);
    }


    if (NT_SUCCESS(Status))
    {
        Status = NtQueryInformationToken(TokenHandle,
                                         TokenStatistics,
                                         &TokenInformation,
                                         sizeof(TokenInformation),
                                         &ReturnLength);
        if (NT_SUCCESS(Status))
        {
            RtlCopyLuid(CallerLuid, &TokenInformation.AuthenticationId);
        }
    }


    if (TokenHandle != 0)
    {
        NtClose(TokenHandle);
    }

    return Status;
}
