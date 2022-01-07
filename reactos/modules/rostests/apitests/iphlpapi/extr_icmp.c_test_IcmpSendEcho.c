
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SendData ;
typedef int PVOID ;
typedef int ICMP_ECHO_REPLY ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetLastError () ;
 unsigned long INADDR_NONE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IP_BUF_TOO_SMALL ;
 scalar_t__ IP_GENERAL_FAILURE ;
 int IcmpCloseHandle (scalar_t__) ;
 scalar_t__ IcmpCreateFile () ;
 scalar_t__ IcmpSendEcho (scalar_t__,unsigned long,char*,int,int *,int ,scalar_t__,int) ;
 int SetLastError (int) ;
 int free (int ) ;
 int malloc (int) ;
 int ok (scalar_t__,char*,...) ;
 int skip (char*,scalar_t__) ;

__attribute__((used)) static
void
test_IcmpSendEcho(void)
{
    HANDLE hIcmp;
    unsigned long ipaddr = INADDR_NONE;
    DWORD bRet = 0, error = 0;
    char SendData[32] = "Data Buffer";
    PVOID ReplyBuffer;
    DWORD ReplySize = 0;

    SetLastError(0xDEADBEEF);
    hIcmp = IcmpCreateFile();
    if (hIcmp == INVALID_HANDLE_VALUE)
    {
        skip("IcmpCreateFile failed unexpectedly: %lu\n", GetLastError());
        return;
    }

    ipaddr = 0x08080808;
    ReplyBuffer = malloc(sizeof(ICMP_ECHO_REPLY) + sizeof(SendData));

    ReplySize = sizeof(ICMP_ECHO_REPLY);
    SetLastError(0xDEADBEEF);
    bRet = IcmpSendEcho(hIcmp, ipaddr, SendData, sizeof(SendData),
        ((void*)0), ReplyBuffer, ReplySize, 5000);

    ok(!bRet, "IcmpSendEcho succeeded unexpectedly\n");
    error = GetLastError();
    ok(error == IP_BUF_TOO_SMALL ||
       error == IP_GENERAL_FAILURE ,
       "IcmpSendEcho returned unexpected error: %lu\n", error);

    ReplySize = sizeof(ICMP_ECHO_REPLY) + sizeof(SendData);
    SetLastError(0xDEADBEEF);
    bRet = IcmpSendEcho(hIcmp, ipaddr, SendData, sizeof(SendData),
        ((void*)0), ReplyBuffer, ReplySize, 5000);

    ok(bRet, "IcmpSendEcho failed unexpectedly: %lu\n", GetLastError());

    free(ReplyBuffer);
    IcmpCloseHandle(hIcmp);
}
