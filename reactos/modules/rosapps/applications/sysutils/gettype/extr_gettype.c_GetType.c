
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwMajorVersion; int dwMinorVersion; int wSuiteMask; } ;
typedef int LPSERVER_INFO_102 ;
typedef TYPE_1__* LPOSVERSIONINFOEX ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int VER_SUITE_BLADE ;
 int VER_SUITE_DATACENTER ;
 int VER_SUITE_ENTERPRISE ;
 int VER_SUITE_PERSONAL ;

INT GetType(BOOL bLocal, LPOSVERSIONINFOEX osvi, LPSERVER_INFO_102 pBuf102)
{
 if(bLocal)
 {
  if(osvi->dwMajorVersion == 5)
  {
   if(osvi->dwMinorVersion == 1)
   {
    if(osvi->wSuiteMask & VER_SUITE_PERSONAL)
     return 1;
    else
     return 2;
   }
   else if(osvi->dwMinorVersion == 2)
   {
    if(osvi->wSuiteMask & VER_SUITE_BLADE)
     return 6;
    else if(osvi->wSuiteMask & VER_SUITE_DATACENTER)
     return 5;
    else if(osvi->wSuiteMask & VER_SUITE_ENTERPRISE)
     return 4;
    else
     return 3;
   }
  }
 }
 else
 {

 }
 return 255;
}
