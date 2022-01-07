
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IcmpCloseHandle (scalar_t__) ;
 scalar_t__ IcmpCreateFile () ;
 int SetLastError (int) ;
 int ok (int,char*,int ) ;

__attribute__((used)) static
void
test_IcmpCreateFile(void)
{
    HANDLE hIcmp;

    SetLastError(0xDEADBEEF);
    hIcmp = IcmpCreateFile();
    ok(hIcmp != INVALID_HANDLE_VALUE, "IcmpCreateFile failed unexpectedly: %lu\n", GetLastError());

    if (hIcmp != INVALID_HANDLE_VALUE)
        IcmpCloseHandle(hIcmp);
}
