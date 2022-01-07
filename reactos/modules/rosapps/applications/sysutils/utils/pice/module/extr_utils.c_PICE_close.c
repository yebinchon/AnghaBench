
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int DPRINT (int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int ZwClose (scalar_t__) ;

int PICE_close (HANDLE hFile)
{
 if (NT_SUCCESS( ZwClose((HANDLE)hFile)))
 {
  return 0;
 }
 DPRINT((0,"ZwClose failed:\n"));
 return -1;
}
