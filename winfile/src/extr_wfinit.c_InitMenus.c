
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ TCHAR ;
typedef int HMENU ;
typedef scalar_t__ FM_UNDELETE_PROC ;


 int AddBackslash (scalar_t__*) ;
 int COUNTOF (scalar_t__*) ;
 int CheckMenuItem (int ,int ,int) ;
 int DrawMenuBar (int ) ;
 int EnableMenuItem (int ,int ,int) ;
 int FALSE ;
 int FreeLibrary (int *) ;
 int GetMenu (int ) ;
 int GetPrivateProfileString (int ,int ,int ,scalar_t__*,int ,int ) ;
 scalar_t__ GetProcAddress (int *,int ) ;
 int GetSubMenu (int ,int) ;
 int GetSystemDirectory (scalar_t__*,int ) ;
 int IDM_CONNECT ;
 int IDM_DISCONNECT ;
 int IDM_DISK ;
 int IDM_DISKCOPY ;
 int IDM_DRIVEBAR ;
 int IDM_FILE ;
 int IDM_INDEXONLAUNCH ;
 int IDM_MINONRUN ;
 int IDM_NEWWINONCONNECT ;
 int IDM_SAVESETTINGS ;
 int IDM_SHAREAS ;
 int IDM_STATUSBAR ;
 int IDM_STOPSHARE ;
 int IDM_TOOLBAR ;
 int IDM_UNDELETE ;
 int IDS_CONNECT ;
 int IDS_DISCONNECT ;
 int IDS_NEWWINONCONNECT ;
 int IDS_SHAREAS ;
 int IDS_STOPSHARE ;
 int IDS_UNDELETE ;
 int InitExtensions () ;
 int InitToolbarButtons () ;
 int InsertMenu (int ,int,int,int ,scalar_t__*) ;
 int * LoadLibrary (scalar_t__*) ;
 int LoadString (int ,int ,scalar_t__*,int ) ;
 int MAXPATHLEN ;
 int MF_BYCOMMAND ;
 int MF_BYPOSITION ;
 int MF_CHECKED ;
 int MF_GRAYED ;
 int MF_SEPARATOR ;
 int MF_STRING ;
 int MapIDMToMenuPos (int ) ;
 int NS_CONNECTDLG ;
 int NS_SHAREDLG ;
 int TRUE ;
 int UNDELETE_ENTRYA ;
 int UNDELETE_ENTRYW ;
 scalar_t__ WNetStat (int ) ;
 scalar_t__ bDriveBar ;
 scalar_t__ bIndexOnLaunch ;
 scalar_t__ bMinOnRun ;
 scalar_t__ bNewWinOnConnect ;
 scalar_t__ bSaveSettings ;
 scalar_t__ bStatusBar ;
 scalar_t__ bToolbar ;
 int bUndeleteUnicode ;
 int hAppInstance ;
 int * hModUndelete ;
 int hwndFrame ;
 scalar_t__ lpfpUndelete ;
 int lstrcat (scalar_t__*,scalar_t__*) ;
 scalar_t__ nFloppies ;
 int szNULL ;
 int szSettings ;
 int szTheINIFile ;
 int szUndelete ;

VOID
InitMenus()
{
   HMENU hMenu;
   TCHAR szValue[MAXPATHLEN];
   HMENU hMenuOptions;

   TCHAR szPathName[MAXPATHLEN];

   GetPrivateProfileString(szSettings, szUndelete, szNULL, szValue, COUNTOF(szValue), szTheINIFile);

   if (szValue[0]) {



      GetSystemDirectory(szPathName, COUNTOF(szPathName));
      AddBackslash(szPathName);
      lstrcat(szPathName, szValue);

      hModUndelete = LoadLibrary(szValue);

      if (hModUndelete) {
         lpfpUndelete = (FM_UNDELETE_PROC)GetProcAddress(hModUndelete, UNDELETE_ENTRYW);

         if (lpfpUndelete) {
            bUndeleteUnicode = TRUE;
         } else {
            lpfpUndelete = (FM_UNDELETE_PROC)GetProcAddress(hModUndelete, UNDELETE_ENTRYA);
            bUndeleteUnicode = FALSE;
         }

         if (lpfpUndelete) {
            hMenu = GetSubMenu(GetMenu(hwndFrame), MapIDMToMenuPos(IDM_FILE));
            LoadString(hAppInstance, IDS_UNDELETE, szValue, COUNTOF(szValue));
            InsertMenu(hMenu, 4, MF_BYPOSITION | MF_STRING, IDM_UNDELETE, szValue);
         }
      } else {
         FreeLibrary(hModUndelete);
         hModUndelete = ((void*)0);
      }
   }




   hMenu = GetSubMenu(GetMenu(hwndFrame), MapIDMToMenuPos(IDM_DISK));

   if (WNetStat(NS_CONNECTDLG)) {

      InsertMenu(hMenu, 4, MF_BYPOSITION | MF_SEPARATOR, 0, ((void*)0));

      LoadString(hAppInstance, IDS_NEWWINONCONNECT, szValue, COUNTOF(szValue));
      hMenuOptions = GetSubMenu(GetMenu(hwndFrame), 4);
      InsertMenu(hMenuOptions, 8, MF_BYPOSITION | MF_STRING, IDM_NEWWINONCONNECT, szValue);

      LoadString(hAppInstance, IDS_CONNECT, szValue, COUNTOF(szValue));
      InsertMenu(hMenu, 5, MF_BYPOSITION | MF_STRING, IDM_CONNECT, szValue);

      LoadString(hAppInstance, IDS_DISCONNECT, szValue, COUNTOF(szValue));
      InsertMenu(hMenu, 6, MF_BYPOSITION | MF_STRING, IDM_DISCONNECT, szValue);

   }


   if (WNetStat(NS_SHAREDLG)) {

      InsertMenu(hMenu, 7, MF_BYPOSITION | MF_SEPARATOR, 0, ((void*)0));

      LoadString(hAppInstance, IDS_SHAREAS, szValue, COUNTOF(szValue));
      InsertMenu(hMenu, 8, MF_BYPOSITION | MF_STRING, IDM_SHAREAS, szValue);

      LoadString(hAppInstance, IDS_STOPSHARE, szValue, COUNTOF(szValue));
      InsertMenu(hMenu, 9, MF_BYPOSITION | MF_STRING, IDM_STOPSHARE, szValue);

   }




   hMenu = GetMenu(hwndFrame);

   if (nFloppies == 0) {
      EnableMenuItem(hMenu, IDM_DISKCOPY, MF_BYCOMMAND | MF_GRAYED);
   }


   if (bStatusBar)
      CheckMenuItem(hMenu, IDM_STATUSBAR, MF_BYCOMMAND | MF_CHECKED);
   if (bMinOnRun)
      CheckMenuItem(hMenu, IDM_MINONRUN, MF_BYCOMMAND | MF_CHECKED);
   if (bIndexOnLaunch)
      CheckMenuItem(hMenu, IDM_INDEXONLAUNCH, MF_BYCOMMAND | MF_CHECKED);

   if (bSaveSettings)
      CheckMenuItem(hMenu, IDM_SAVESETTINGS, MF_BYCOMMAND | MF_CHECKED);

   if (bDriveBar)
      CheckMenuItem(hMenu, IDM_DRIVEBAR, MF_BYCOMMAND | MF_CHECKED);
   if (bToolbar)
      CheckMenuItem(hMenu, IDM_TOOLBAR, MF_BYCOMMAND | MF_CHECKED);

   if (bNewWinOnConnect)
      CheckMenuItem(hMenu, IDM_NEWWINONCONNECT, MF_BYCOMMAND | MF_CHECKED);





   InitExtensions();

   InitToolbarButtons();




   DrawMenuBar(hwndFrame);
}
