
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t INT ;


 int EnableMenuItem (int ,int ,int) ;
 int GetMenu (int ) ;
 int IDM_DISCONNECT ;
 int IsCDRomDrive (int ) ;
 scalar_t__ IsRemoteDrive (int ) ;
 int MF_BYCOMMAND ;
 int MF_ENABLED ;
 int MF_GRAYED ;
 int SendMessage (int ,int ,int ,int) ;
 int TB_ENABLEBUTTON ;
 size_t cDrives ;
 int hwndFrame ;
 int hwndToolbar ;
 int * rgiDrive ;

VOID
EnableDisconnectButton(void)
{
   INT i;

   for (i=0; i<cDrives; i++)
      if (!IsCDRomDrive(rgiDrive[i]) && IsRemoteDrive(rgiDrive[i]))
         break;

   SendMessage(hwndToolbar, TB_ENABLEBUTTON, IDM_DISCONNECT, i<cDrives);

   EnableMenuItem(GetMenu(hwndFrame), IDM_DISCONNECT, i<cDrives ?
      MF_BYCOMMAND | MF_ENABLED :
      MF_BYCOMMAND | MF_GRAYED );

}
