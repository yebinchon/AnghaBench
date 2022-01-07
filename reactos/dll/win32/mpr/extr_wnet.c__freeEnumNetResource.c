
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lpRemoteName; } ;
typedef TYPE_1__* LPNETRESOURCEW ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void _freeEnumNetResource(LPNETRESOURCEW lpNet)
{
    if (lpNet)
    {
        HeapFree(GetProcessHeap(), 0, lpNet->lpRemoteName);
        HeapFree(GetProcessHeap(), 0, lpNet);
    }
}
