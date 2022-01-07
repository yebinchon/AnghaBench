
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_6__ {int Name; int NameLen; int MftId; struct TYPE_6__* Next; } ;
typedef int PWSTR ;
typedef TYPE_1__* PNAME_CACHE_ENTRY ;
typedef int NAME_CACHE_ENTRY ;
typedef int DWORD ;


 TYPE_1__* CacheHead ;
 int CopyMemory (int ,int ,int ) ;
 TYPE_1__* FindInCache (int ) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int ) ;

PNAME_CACHE_ENTRY AddToCache(PWSTR Name, DWORD Length, ULONGLONG MftId)
{
    PNAME_CACHE_ENTRY CacheEntry;


    CacheEntry = FindInCache(MftId);
    if (CacheEntry != ((void*)0))
    {
        return CacheEntry;
    }


    CacheEntry = HeapAlloc(GetProcessHeap(), 0, sizeof(NAME_CACHE_ENTRY) + Length);
    if (CacheEntry == ((void*)0))
    {
        return ((void*)0);
    }


    CacheEntry->Next = CacheHead;
    CacheHead = CacheEntry;

    CacheEntry->MftId = MftId;
    CacheEntry->NameLen = Length;
    CopyMemory(CacheEntry->Name, Name, Length);

    return CacheEntry;
}
