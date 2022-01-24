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
typedef  int UINT ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_END ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int LOG_ERROR ; 
 int LOG_EVENTLOG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hLogFile ; 

__attribute__((used)) static BOOL
FUNC16(LPCTSTR lpMsg,
          DWORD errNum,
          DWORD exitCode,
          UINT flags)
{
    LPTSTR lpFullMsg = NULL;
    DWORD msgLen;

    if (!FUNC10())
        return FALSE;

    msgLen = FUNC15(lpMsg) + 1;

    if (flags & LOG_ERROR)
    {
        LPVOID lpSysMsg;
        DWORD eMsgLen;

        eMsgLen = FUNC2(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                                NULL,
                                errNum,
                                FUNC9(LANG_NEUTRAL, SUBLANG_DEFAULT),
                                (LPTSTR)&lpSysMsg,
                                0,
                                NULL);

        msgLen = msgLen + eMsgLen + 40;

        lpFullMsg = FUNC5(FUNC4(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            FUNC14(lpFullMsg,
                       msgLen,
                       FUNC13("%s : %s\tErrNum = %lu ExitCode = %lu\r\n"),
                       lpMsg,
                       lpSysMsg,
                       errNum,
                       exitCode);
        }

        FUNC7(lpSysMsg);

    }
    else
    {
        msgLen += 2;

        lpFullMsg = FUNC5(FUNC4(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            FUNC14(lpFullMsg,
                       msgLen,
                      FUNC13("%s\r\n"),
                      lpMsg);
        }
    }

    if (lpFullMsg)
    {
        DWORD bytesWritten;

        FUNC11(hLogFile, 0, NULL, FILE_END);

        FUNC12(hLogFile,
                  lpFullMsg,
                  FUNC15(lpFullMsg) * sizeof(TCHAR),
                  &bytesWritten,
                  NULL);
        if (bytesWritten == 0)
        {
            FUNC8(FUNC13("Failed to write to log file"),
                          FUNC3(),
                          0,
                          LOG_EVENTLOG | LOG_ERROR);
        }

        FUNC6(FUNC4(),
                 0,
                 lpFullMsg);
    }

    FUNC0(hLogFile);

    if (exitCode > 0)
        FUNC1(exitCode);
}