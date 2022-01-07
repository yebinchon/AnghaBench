
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {void* lpRemoteName; int * lpProvider; int lpComment; int lpLocalName; } ;
typedef int NETRESOURCEW ;
typedef TYPE_1__* LPNETRESOURCEW ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 int lstrcpyW (void*,void*) ;
 int lstrlenW (void*) ;

__attribute__((used)) static LPNETRESOURCEW _copyNetResourceForEnumW(LPNETRESOURCEW lpNet)
{
    LPNETRESOURCEW ret;

    if (lpNet)
    {
        ret = HeapAlloc(GetProcessHeap(), 0, sizeof(NETRESOURCEW));
        if (ret)
        {
            size_t len;

            *ret = *lpNet;
            ret->lpLocalName = ret->lpComment = ret->lpProvider = ((void*)0);
            if (lpNet->lpRemoteName)
            {
                len = lstrlenW(lpNet->lpRemoteName) + 1;
                ret->lpRemoteName = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
                if (ret->lpRemoteName)
                    lstrcpyW(ret->lpRemoteName, lpNet->lpRemoteName);
            }
        }
    }
    else
        ret = ((void*)0);
    return ret;
}
