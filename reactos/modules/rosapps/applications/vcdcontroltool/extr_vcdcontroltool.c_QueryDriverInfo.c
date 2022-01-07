
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int lpBinaryPathName; int lpDisplayName; } ;
struct TYPE_7__ {scalar_t__ dwCurrentState; } ;
typedef TYPE_1__ SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef TYPE_2__* LPQUERY_SERVICE_CONFIGW ;
typedef int LPARAM ;
typedef int INT_PTR ;
typedef int HWND ;
typedef int DWORD ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IDC_DRIVERINFO ;
 int IDC_DRIVERINSTALL ;
 int IDC_DRIVERREMOVE ;
 int MAX_PATH ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,char*,int) ;
 scalar_t__ QueryServiceConfig (int *,TYPE_2__*,int ,int *) ;
 scalar_t__ QueryServiceStatus (int *,TYPE_1__*) ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_QUERY_CONFIG ;
 int SERVICE_QUERY_STATUS ;
 scalar_t__ SERVICE_RUNNING ;
 scalar_t__ SERVICE_START_PENDING ;
 int SW_SHOW ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetServiceState (int ) ;
 int ShowWindow (int ,int ) ;
 int TRUE ;
 int WM_SETTEXT ;
 int hDriverWnd ;
 int wsprintf (int *,char*,int ,int ) ;

INT_PTR
QueryDriverInfo(HWND hDlg)
{
    DWORD dwSize;
    SC_HANDLE hMgr, hSvc;
    LPQUERY_SERVICE_CONFIGW pConfig;
    WCHAR szText[2 * MAX_PATH];
    HWND hControl;
    SERVICE_STATUS Status;

    hDriverWnd = hDlg;


    hMgr = OpenSCManager(((void*)0), ((void*)0), SC_MANAGER_CONNECT);
    if (hMgr != ((void*)0))
    {

        hSvc = OpenService(hMgr, L"Vcdrom", SERVICE_QUERY_CONFIG | SERVICE_QUERY_STATUS);
        if (hSvc != ((void*)0))
        {

            if (!QueryServiceConfig(hSvc, ((void*)0), 0, &dwSize) &&
                GetLastError() == ERROR_INSUFFICIENT_BUFFER)
            {

                pConfig = HeapAlloc(GetProcessHeap(), 0, dwSize);

                if (QueryServiceConfig(hSvc, pConfig, dwSize, &dwSize))
                {

                    wsprintf(szText, L"%s:\n(%s)", pConfig->lpDisplayName, pConfig->lpBinaryPathName);
                    hControl = GetDlgItem(hDriverWnd, IDC_DRIVERINFO);
                    SendMessage(hControl, WM_SETTEXT, 0, (LPARAM)szText);
                }

                HeapFree(GetProcessHeap(), 0, pConfig);
            }


            if (QueryServiceStatus(hSvc, &Status))
            {
                if (Status.dwCurrentState != SERVICE_RUNNING &&
                    Status.dwCurrentState != SERVICE_START_PENDING)
                {
                    SetServiceState(FALSE);
                }
                else
                {
                    SetServiceState(TRUE);
                }
            }

            CloseServiceHandle(hSvc);
        }

        CloseServiceHandle(hMgr);
    }


    {
        hControl = GetDlgItem(hDriverWnd, IDC_DRIVERINSTALL);
        EnableWindow(hControl, FALSE);
        hControl = GetDlgItem(hDriverWnd, IDC_DRIVERREMOVE);
        EnableWindow(hControl, FALSE);
    }


    ShowWindow(hDlg, SW_SHOW);

    return TRUE;
}
