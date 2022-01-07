
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int * Next; scalar_t__ lpTarget; scalar_t__ lpSource; } ;
typedef TYPE_1__* PALIAS_ENTRY ;
typedef int LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int ALIAS_ENTRY ;


 TYPE_1__* ConsoleAllocHeap (int ,int) ;
 int wcscpy (int ,scalar_t__) ;
 int wcslen (scalar_t__) ;

PALIAS_ENTRY
IntCreateAliasEntry(LPCWSTR lpSource, LPCWSTR lpTarget)
{
    UINT dwSource;
    UINT dwTarget;
    PALIAS_ENTRY Entry;

    dwSource = wcslen(lpSource) + 1;
    dwTarget = wcslen(lpTarget) + 1;

    Entry = ConsoleAllocHeap(0, sizeof(ALIAS_ENTRY) + sizeof(WCHAR) * (dwSource + dwTarget));
    if (!Entry) return Entry;

    Entry->lpSource = (LPCWSTR)(Entry + 1);
    wcscpy((LPWSTR)Entry->lpSource, lpSource);
    Entry->lpTarget = Entry->lpSource + dwSource;
    wcscpy((LPWSTR)Entry->lpTarget, lpTarget);
    Entry->Next = ((void*)0);

    return Entry;
}
