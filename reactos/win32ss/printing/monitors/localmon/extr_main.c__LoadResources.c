
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PWSTR ;
typedef int HINSTANCE ;


 int IDS_LOCAL_MONITOR ;
 int IDS_LOCAL_PORT ;
 int LoadStringW (int ,int ,int ,int ) ;
 int cbLocalMonitor ;
 int cbLocalPort ;
 int pwszLocalMonitor ;
 int pwszLocalPort ;
 int wcslen (int ) ;

__attribute__((used)) static void
_LoadResources(HINSTANCE hinstDLL)
{
    LoadStringW(hinstDLL, IDS_LOCAL_MONITOR, (PWSTR)&pwszLocalMonitor, 0);
    cbLocalMonitor = (wcslen(pwszLocalMonitor) + 1) * sizeof(WCHAR);

    LoadStringW(hinstDLL, IDS_LOCAL_PORT, (PWSTR)&pwszLocalPort, 0);
    cbLocalPort = (wcslen(pwszLocalPort) + 1) * sizeof(WCHAR);
}
