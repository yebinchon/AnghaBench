
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;


 int DirReadAbort (int ,int *,int ) ;
 int EDIRABORT_WINDOWCLOSE ;

VOID
DirReadDestroyWindow(HWND hwndDir)
{
   DirReadAbort(hwndDir, ((void*)0), EDIRABORT_WINDOWCLOSE);
}
