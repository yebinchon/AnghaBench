
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int fdwStatus; } ;
typedef scalar_t__ LPXDTALINK ;
typedef int HWND ;


 int GWL_HDTA ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 int LPXDTA_STATUS_CLOSE ;
 int LPXDTA_STATUS_READING ;
 int MemDelete (scalar_t__) ;
 TYPE_1__* MemLinkToHead (scalar_t__) ;
 int SetWindowLongPtr (int ,int ,long) ;

VOID
FreeDTA(HWND hwnd)
{
   register LPXDTALINK lpxdtaLink;

   lpxdtaLink = (LPXDTALINK)GetWindowLongPtr(hwnd, GWL_HDTA);

   SetWindowLongPtr(hwnd, GWL_HDTA, 0L);




   if (lpxdtaLink) {

       if (MemLinkToHead(lpxdtaLink)->fdwStatus & LPXDTA_STATUS_READING) {

           MemLinkToHead(lpxdtaLink)->fdwStatus |= LPXDTA_STATUS_CLOSE;

       } else {

           MemDelete(lpxdtaLink);
       }
   }
}
