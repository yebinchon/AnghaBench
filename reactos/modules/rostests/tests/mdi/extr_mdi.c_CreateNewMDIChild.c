
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* szTitle; int style; void* cy; void* y; void* cx; void* x; int hOwner; int szClass; } ;
typedef TYPE_1__ MDICREATESTRUCT ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;


 void* CW_USEDEFAULT ;
 int GetModuleHandle (int *) ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MDIS_ALLCHILDSTYLES ;
 int MessageBox (scalar_t__,char*,char*,int) ;
 scalar_t__ SendMessage (scalar_t__,int ,int ,int ) ;
 int WM_MDICREATE ;
 int g_szChildClassName ;

HWND CreateNewMDIChild(HWND hMDIClient)
{
 MDICREATESTRUCT mcs;
 HWND hChild;

 mcs.szTitle = "[Untitled]";
 mcs.szClass = g_szChildClassName;
 mcs.hOwner = GetModuleHandle(((void*)0));
 mcs.x = mcs.cx = CW_USEDEFAULT;
 mcs.y = mcs.cy = CW_USEDEFAULT;
 mcs.style = MDIS_ALLCHILDSTYLES;

 hChild = (HWND)SendMessage(hMDIClient, WM_MDICREATE, 0, (LPARAM)&mcs);
 if(!hChild)
 {
  MessageBox(hMDIClient, "MDI Child creation failed.", "Oh Oh...",
   MB_ICONEXCLAMATION | MB_OK);
 }
 return hChild;
}
