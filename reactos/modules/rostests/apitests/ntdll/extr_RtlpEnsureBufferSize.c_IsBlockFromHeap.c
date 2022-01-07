
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int he ;
struct TYPE_7__ {int dwSize; scalar_t__ dwAddress; scalar_t__ dwBlockSize; } ;
struct TYPE_6__ {int wFlags; int * lpData; } ;
typedef int * PVOID ;
typedef TYPE_1__ PROCESS_HEAP_ENTRY ;
typedef TYPE_2__ HEAPENTRY32 ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateToolhelp32Snapshot (int ,int ) ;
 scalar_t__ FALSE ;
 int GetCurrentProcessId () ;
 scalar_t__ Heap32First (TYPE_2__*,int ,scalar_t__) ;
 scalar_t__ Heap32Next (TYPE_2__*) ;
 int HeapLock (scalar_t__) ;
 int HeapUnlock (scalar_t__) ;
 scalar_t__ HeapWalk (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PROCESS_HEAP_ENTRY_BUSY ;
 int TH32CS_SNAPHEAPLIST ;
 scalar_t__ TRUE ;
 int skip (char*) ;

__attribute__((used)) static BOOL IsBlockFromHeap(HANDLE hHeap, PVOID ptr)
{
    HEAPENTRY32 he;
    BOOL ret = FALSE;
    HANDLE hHeapSnap = CreateToolhelp32Snapshot(TH32CS_SNAPHEAPLIST, GetCurrentProcessId());

    if (hHeapSnap == INVALID_HANDLE_VALUE)
        return FALSE;

    he.dwSize = sizeof(he);

    if (Heap32First(&he, GetCurrentProcessId(), (DWORD_PTR)hHeap))
    {
        do {
            if ((DWORD_PTR)ptr >= he.dwAddress && (DWORD_PTR)ptr <= (he.dwAddress + he.dwBlockSize))
                ret = TRUE;
        } while (!ret && Heap32Next(&he));
    }

    CloseHandle(hHeapSnap);

    return ret;

}
