
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ Icmp6CreateFile () ;
 int IcmpCloseHandle (scalar_t__) ;
 int SetLastError (int) ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static
void
test_Icmp6CreateFile(void)
{
    HANDLE hIcmp;

    SetLastError(0xDEADBEEF);
    hIcmp = Icmp6CreateFile();

    if (GetLastError() == ERROR_FILE_NOT_FOUND)
    {

        skip("IPv6 is not available.\n");
        return;
    }

    ok(hIcmp != INVALID_HANDLE_VALUE, "Icmp6CreateFile failed unexpectedly: %lu\n", GetLastError());

    if (hIcmp != INVALID_HANDLE_VALUE)
        IcmpCloseHandle(hIcmp);
}
