
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ wProductType; } ;
struct TYPE_5__ {int sv102_type; } ;
typedef TYPE_1__* LPSERVER_INFO_102 ;
typedef TYPE_2__* LPOSVERSIONINFOEX ;
typedef int INT ;
typedef int BOOL ;


 int SV_TYPE_DOMAIN_BAKCTRL ;
 int SV_TYPE_DOMAIN_CTRL ;
 int SV_TYPE_SERVER_NT ;
 scalar_t__ VER_NT_DOMAIN_CONTROLLER ;
 scalar_t__ VER_NT_SERVER ;
 scalar_t__ VER_NT_WORKSTATION ;

INT
GetSystemRole(BOOL bLocal, LPOSVERSIONINFOEX osvi, LPSERVER_INFO_102 pBuf102)
{

 if(pBuf102 != ((void*)0) && !bLocal)
 {
  if ((pBuf102->sv102_type & SV_TYPE_DOMAIN_CTRL) ||
   (pBuf102->sv102_type & SV_TYPE_DOMAIN_BAKCTRL))
   return 1;
  else if(pBuf102->sv102_type & SV_TYPE_SERVER_NT)
   return 2;
  else
   return 3;
 }
 else
 {
  if(osvi->wProductType == VER_NT_DOMAIN_CONTROLLER)
   return 1;
  else if(osvi->wProductType == VER_NT_SERVER)
   return 2;
  else if(osvi->wProductType == VER_NT_WORKSTATION)
   return 3;
 }
 return 255;

}
