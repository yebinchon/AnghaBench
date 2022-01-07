
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int * Next; int * Data; scalar_t__ lpExeName; } ;
typedef int PWCHAR ;
typedef TYPE_1__* PALIAS_HEADER ;
typedef scalar_t__ LPCWSTR ;
typedef int ALIAS_HEADER ;


 TYPE_1__* ConsoleAllocHeap (int ,int) ;
 int wcscpy (int ,scalar_t__) ;
 int wcslen (scalar_t__) ;

PALIAS_HEADER
IntCreateAliasHeader(LPCWSTR lpExeName)
{
    PALIAS_HEADER Entry;
    UINT dwLength = wcslen(lpExeName) + 1;

    Entry = ConsoleAllocHeap(0, sizeof(ALIAS_HEADER) + sizeof(WCHAR) * dwLength);
    if (!Entry) return Entry;

    Entry->lpExeName = (LPCWSTR)(Entry + 1);
    wcscpy((PWCHAR)Entry->lpExeName, lpExeName);
    Entry->Data = ((void*)0);
    Entry->Next = ((void*)0);
    return Entry;
}
