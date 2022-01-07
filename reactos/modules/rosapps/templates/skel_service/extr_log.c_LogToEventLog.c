
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseEventLog (scalar_t__) ;
 int EVENTLOG_ERROR_TYPE ;
 int EVENTLOG_SUCCESS ;
 int LOG_ERROR ;
 scalar_t__ RegisterEventSource (int *,int ) ;
 int ReportEvent (scalar_t__,int ,int ,int ,int *,int,int ,int *,int *) ;
 int lpEventSource ;

__attribute__((used)) static VOID
LogToEventLog(LPCTSTR lpMsg,
              DWORD errNum,
              DWORD exitCode,
              UINT flags)
{
    HANDLE hEventLog;

    hEventLog = RegisterEventSource(((void*)0), lpEventSource);
    if (hEventLog)
    {
        ReportEvent(hEventLog,
                    (flags & LOG_ERROR) ? EVENTLOG_ERROR_TYPE : EVENTLOG_SUCCESS,
                    0,
                    0,
                    ((void*)0),
                    1,
                    0,
                    &lpMsg,
                    ((void*)0));

        CloseEventLog(hEventLog);
    }
}
