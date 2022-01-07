
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TCHAR ;
typedef int LPVOID ;
typedef int * LPTSTR ;
typedef int * LPCTSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int ExitProcess (int) ;
 int FALSE ;
 int FILE_END ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessage (int,int *,int,int ,int *,int ,int *) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LANG_NEUTRAL ;
 int LOG_ERROR ;
 int LOG_EVENTLOG ;
 int LocalFree (int ) ;
 int LogToEventLog (int ,int ,int ,int) ;
 int MAKELANGID (int ,int ) ;
 int OpenLogFile () ;
 int SUBLANG_DEFAULT ;
 int SetFilePointer (int ,int ,int *,int ) ;
 int WriteFile (int ,int *,int,int*,int *) ;
 int _T (char*) ;
 int _sntprintf (int *,int,int ,int *,...) ;
 int _tcslen (int *) ;
 int hLogFile ;

__attribute__((used)) static BOOL
LogToFile(LPCTSTR lpMsg,
          DWORD errNum,
          DWORD exitCode,
          UINT flags)
{
    LPTSTR lpFullMsg = ((void*)0);
    DWORD msgLen;

    if (!OpenLogFile())
        return FALSE;

    msgLen = _tcslen(lpMsg) + 1;

    if (flags & LOG_ERROR)
    {
        LPVOID lpSysMsg;
        DWORD eMsgLen;

        eMsgLen = FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                                ((void*)0),
                                errNum,
                                MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                                (LPTSTR)&lpSysMsg,
                                0,
                                ((void*)0));

        msgLen = msgLen + eMsgLen + 40;

        lpFullMsg = HeapAlloc(GetProcessHeap(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            _sntprintf(lpFullMsg,
                       msgLen,
                       _T("%s : %s\tErrNum = %lu ExitCode = %lu\r\n"),
                       lpMsg,
                       lpSysMsg,
                       errNum,
                       exitCode);
        }

        LocalFree(lpSysMsg);

    }
    else
    {
        msgLen += 2;

        lpFullMsg = HeapAlloc(GetProcessHeap(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            _sntprintf(lpFullMsg,
                       msgLen,
                      _T("%s\r\n"),
                      lpMsg);
        }
    }

    if (lpFullMsg)
    {
        DWORD bytesWritten;

        SetFilePointer(hLogFile, 0, ((void*)0), FILE_END);

        WriteFile(hLogFile,
                  lpFullMsg,
                  _tcslen(lpFullMsg) * sizeof(TCHAR),
                  &bytesWritten,
                  ((void*)0));
        if (bytesWritten == 0)
        {
            LogToEventLog(_T("Failed to write to log file"),
                          GetLastError(),
                          0,
                          LOG_EVENTLOG | LOG_ERROR);
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpFullMsg);
    }

    CloseHandle(hLogFile);

    if (exitCode > 0)
        ExitProcess(exitCode);
}
