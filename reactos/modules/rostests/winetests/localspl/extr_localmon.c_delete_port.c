
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PBYTE ;
typedef scalar_t__ LPWSTR ;
typedef int DWORD ;


 int cmd_DeletePortW ;
 int hXcv ;
 int lstrlenW (scalar_t__) ;
 int pDeletePort (int *,int ,scalar_t__) ;
 int pXcvDataPort (int ,int ,int ,int,int *,int ,int *) ;

__attribute__((used)) static DWORD delete_port(LPWSTR portname)
{
    DWORD res;

    if (pDeletePort) {
        res = pDeletePort(((void*)0), 0, portname);
    }
    else
    {
        res = pXcvDataPort(hXcv, cmd_DeletePortW, (PBYTE) portname, (lstrlenW(portname) + 1) * sizeof(WCHAR), ((void*)0), 0, ((void*)0));
    }
    return res;
}
