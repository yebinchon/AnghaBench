
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Next; int lpSource; } ;
struct TYPE_5__ {TYPE_2__* Data; } ;
typedef TYPE_1__* PALIAS_HEADER ;
typedef TYPE_2__* PALIAS_ENTRY ;
typedef int LPCWSTR ;
typedef scalar_t__ INT ;


 int DPRINT (char*,int ) ;
 scalar_t__ _wcsicmp (int ,int ) ;

PALIAS_ENTRY
IntGetAliasEntry(PALIAS_HEADER Header, LPCWSTR lpSrcName)
{
    PALIAS_ENTRY RootHeader;

    if (Header == ((void*)0)) return ((void*)0);

    RootHeader = Header->Data;
    while (RootHeader)
    {
        INT diff;
        DPRINT("IntGetAliasEntry->lpSource %S\n", RootHeader->lpSource);
        diff = _wcsicmp(RootHeader->lpSource, lpSrcName);
        if (!diff) return RootHeader;
        if (diff > 0) break;

        RootHeader = RootHeader->Next;
    }
    return ((void*)0);
}
