
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int command_test ;
typedef int HINTERNET ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;






 int FTP_TRANSFER_TYPE_ASCII ;
 int GetLastError () ;
 int SetLastError (int) ;

 int ok (int,char*,unsigned int,char*,...) ;
 scalar_t__ pFtpCommandA (int ,int const,int ,char const*,int ,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_command(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL ret;
    DWORD error;
    unsigned int i;
    static const struct
    {
        BOOL ret;
        DWORD error;
        const char *cmd;
    }
    command_test[] =
    {
        { 129, 131, ((void*)0) },
        { 129, 131, "" },
        { 129, 132, "HELO" },
        { 129, 132, "SIZE " },
        { 129, 132, " SIZE" },
        { 129, 132, "SIZE " },
        { 129, 132, "SIZE /welcome.msg /welcome.msg" },
        { 129, 132, "SIZE  /welcome.msg" },
        { 129, 132, "SIZE /welcome.msg " },
        { 128, 130, "SIZE\t/welcome.msg" },
        { 128, 130, "SIZE /welcome.msg" },
        { 129, 132, "PWD /welcome.msg" },
        { 128, 130, "PWD" }
    };

    if (!pFtpCommandA)
    {
        win_skip("FtpCommandA() is not available. Skipping the Ftp command tests\n");
        return;
    }

    for (i = 0; i < sizeof(command_test) / sizeof(command_test[0]); i++)
    {
        SetLastError(0xdeadbeef);
        ret = pFtpCommandA(hFtp, 129, FTP_TRANSFER_TYPE_ASCII, command_test[i].cmd, 0, ((void*)0));
        error = GetLastError();

        ok(ret == command_test[i].ret, "%d: expected FtpCommandA to %s\n", i, command_test[i].ret ? "succeed" : "fail");
        ok(error == command_test[i].error, "%d: expected error %u, got %u\n", i, command_test[i].error, error);
    }
}
