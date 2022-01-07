
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef int* LPWSTR ;
typedef scalar_t__ LPCSTR ;


 int* HEAP_alloc (int) ;
 int RtlMultiByteToUnicodeN (int*,int,int *,int ,int) ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int lstrlenA (scalar_t__) ;

NTSTATUS
HEAP_strdupA2W ( LPWSTR* ppszW, LPCSTR lpszA )
{
    ULONG len;
    NTSTATUS Status;

    *ppszW = ((void*)0);
    if ( !lpszA )
        return STATUS_SUCCESS;
    len = lstrlenA(lpszA);

    *ppszW = HEAP_alloc ( (len+1) * sizeof(WCHAR) );
    if ( !*ppszW )
        return STATUS_NO_MEMORY;
    Status = RtlMultiByteToUnicodeN ( *ppszW, len*sizeof(WCHAR), ((void*)0), (PCHAR)lpszA, len );
    (*ppszW)[len] = L'\0';
    return Status;
}
