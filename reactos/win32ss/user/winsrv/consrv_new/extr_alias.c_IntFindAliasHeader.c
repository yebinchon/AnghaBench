
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int lpExeName; } ;
typedef TYPE_1__* PALIAS_HEADER ;
typedef int LPCWSTR ;
typedef scalar_t__ INT ;


 scalar_t__ _wcsicmp (int ,int ) ;

__attribute__((used)) static
PALIAS_HEADER
IntFindAliasHeader(PALIAS_HEADER RootHeader, LPCWSTR lpExeName)
{
    while (RootHeader)
    {
        INT diff = _wcsicmp(RootHeader->lpExeName, lpExeName);
        if (!diff) return RootHeader;
        if (diff > 0) break;

        RootHeader = RootHeader->Next;
    }
    return ((void*)0);
}
