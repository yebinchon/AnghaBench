
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IStream_iface; scalar_t__ grfStateBits; scalar_t__ type; int lpszPath; int dwMode; int hFile; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ IStream ;
typedef TYPE_2__ ISHFileStream ;
typedef int HANDLE ;
typedef int DWORD ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int SHLWAPI_fsVTable ;
 int StrDupW (int ) ;
 int TRACE (char*,TYPE_2__*) ;

__attribute__((used)) static IStream *IStream_Create(LPCWSTR lpszPath, HANDLE hFile, DWORD dwMode)
{
    ISHFileStream *fileStream;

    fileStream = HeapAlloc(GetProcessHeap(), 0, sizeof(ISHFileStream));
    if (!fileStream) return ((void*)0);

    fileStream->IStream_iface.lpVtbl = &SHLWAPI_fsVTable;
    fileStream->ref = 1;
    fileStream->hFile = hFile;
    fileStream->dwMode = dwMode;
    fileStream->lpszPath = StrDupW(lpszPath);
    fileStream->type = 0;
    fileStream->grfStateBits = 0;

    TRACE ("Returning %p\n", fileStream);
    return &fileStream->IStream_iface;
}
