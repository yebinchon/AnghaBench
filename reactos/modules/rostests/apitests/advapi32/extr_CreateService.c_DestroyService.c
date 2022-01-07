
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SC_HANDLE ;
typedef scalar_t__ LONG ;


 int CloseServiceHandle (int ) ;
 scalar_t__ DNS_ERROR_RCODE_NXRRSET ;
 scalar_t__ DeleteService (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int SetLastError (scalar_t__) ;
 scalar_t__ TRUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void DestroyService(SC_HANDLE hService)
{
    LONG ret;

    if (!hService)
        return;
    SetLastError(DNS_ERROR_RCODE_NXRRSET);
    ret = DeleteService(hService);
    ok(ret == TRUE, "DeleteService returned %ld, expected 1\n", ret);
    ok(GetLastError() == DNS_ERROR_RCODE_NXRRSET
        || GetLastError() == ERROR_SUCCESS , "DeleteService GetLastError()=0x%08lx\n", GetLastError());

    CloseServiceHandle(hService);
}
