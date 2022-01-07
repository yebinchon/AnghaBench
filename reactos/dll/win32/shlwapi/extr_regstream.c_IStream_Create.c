
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * keyNameA; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int bUnicode; TYPE_1__ u; int dwMode; scalar_t__ dwPos; int dwLength; int pbBuffer; int hKey; TYPE_2__ IStream_iface; } ;
typedef int LPBYTE ;
typedef TYPE_3__ ISHRegStream ;
typedef int HKEY ;
typedef int DWORD ;


 int FALSE ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int STGM_READWRITE ;
 int TRACE (char*,TYPE_3__*) ;
 int rstvt ;

__attribute__((used)) static ISHRegStream *IStream_Create(HKEY hKey, LPBYTE pbBuffer, DWORD dwLength)
{
 ISHRegStream* regStream;

 regStream = HeapAlloc(GetProcessHeap(), 0, sizeof(ISHRegStream));

 if (regStream)
 {
   regStream->IStream_iface.lpVtbl = &rstvt;
   regStream->ref = 1;
   regStream->hKey = hKey;
   regStream->pbBuffer = pbBuffer;
   regStream->dwLength = dwLength;
   regStream->dwPos = 0;
   regStream->dwMode = STGM_READWRITE;
   regStream->u.keyNameA = ((void*)0);
   regStream->bUnicode = FALSE;
 }
 TRACE ("Returning %p\n", regStream);
 return regStream;
}
