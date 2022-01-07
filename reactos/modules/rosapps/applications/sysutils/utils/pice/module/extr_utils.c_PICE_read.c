
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long Information; } ;
typedef int LPVOID ;
typedef TYPE_1__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef long DWORD ;


 int ASSERT (int ) ;
 int NT_SUCCESS (int ) ;
 int NtReadFile (int ,int *,int *,int *,TYPE_1__*,int ,long,int *,int *) ;

long PICE_read(HANDLE hFile, LPVOID lpBuffer, long lBytes)
{
 DWORD NumberOfBytesRead;
 IO_STATUS_BLOCK iosb;

 ASSERT( lpBuffer );

 if (!NT_SUCCESS(NtReadFile(
  hFile,
  ((void*)0), ((void*)0), ((void*)0), &iosb,
  lpBuffer,
  (DWORD) lBytes,
  ((void*)0),
  ((void*)0)
  )))
 {
  return -1;
 }
 NumberOfBytesRead = iosb.Information;
 return NumberOfBytesRead;
}
