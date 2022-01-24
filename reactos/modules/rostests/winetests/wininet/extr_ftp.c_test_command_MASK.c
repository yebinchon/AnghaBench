#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  command_test ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
#define  ERROR_INTERNET_EXTENDED_ERROR 132 
#define  ERROR_INVALID_PARAMETER 131 
#define  ERROR_SUCCESS 130 
#define  FALSE 129 
 int /*<<< orphan*/  FTP_TRANSFER_TYPE_ASCII ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  TRUE 128 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL ret;
    DWORD error;
    unsigned int i;
    static const struct
    {
        BOOL  ret;
        DWORD error;
        const char *cmd;
    }
    command_test[] =
    {
        { FALSE, ERROR_INVALID_PARAMETER,       NULL },
        { FALSE, ERROR_INVALID_PARAMETER,       "" },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "HELO" },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "SIZE " },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, " SIZE" },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "SIZE " },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "SIZE /welcome.msg /welcome.msg" },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "SIZE  /welcome.msg" },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "SIZE /welcome.msg " },
        { TRUE,  ERROR_SUCCESS,                 "SIZE\t/welcome.msg" },
        { TRUE,  ERROR_SUCCESS,                 "SIZE /welcome.msg" },
        { FALSE, ERROR_INTERNET_EXTENDED_ERROR, "PWD /welcome.msg" },
        { TRUE,  ERROR_SUCCESS,                 "PWD" }
    };

    if (!&pFtpCommandA)
    {
        FUNC4("FtpCommandA() is not available. Skipping the Ftp command tests\n");
        return;
    }

    for (i = 0; i < sizeof(command_test) / sizeof(command_test[0]); i++)
    {
        FUNC1(0xdeadbeef);
        ret = FUNC3(hFtp, FALSE, FTP_TRANSFER_TYPE_ASCII, command_test[i].cmd, 0, NULL);
        error = FUNC0();

        FUNC2(ret == command_test[i].ret, "%d: expected FtpCommandA to %s\n", i, command_test[i].ret ? "succeed" : "fail");
        FUNC2(error == command_test[i].error, "%d: expected error %u, got %u\n", i, command_test[i].error, error);
    }
}