#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ TCHAR ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  scalar_t__ FM_UNDELETE_PROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDM_CONNECT ; 
 int /*<<< orphan*/  IDM_DISCONNECT ; 
 int /*<<< orphan*/  IDM_DISK ; 
 int /*<<< orphan*/  IDM_DISKCOPY ; 
 int /*<<< orphan*/  IDM_DRIVEBAR ; 
 int /*<<< orphan*/  IDM_FILE ; 
 int /*<<< orphan*/  IDM_INDEXONLAUNCH ; 
 int /*<<< orphan*/  IDM_MINONRUN ; 
 int /*<<< orphan*/  IDM_NEWWINONCONNECT ; 
 int /*<<< orphan*/  IDM_SAVESETTINGS ; 
 int /*<<< orphan*/  IDM_SHAREAS ; 
 int /*<<< orphan*/  IDM_STATUSBAR ; 
 int /*<<< orphan*/  IDM_STOPSHARE ; 
 int /*<<< orphan*/  IDM_TOOLBAR ; 
 int /*<<< orphan*/  IDM_UNDELETE ; 
 int /*<<< orphan*/  IDS_CONNECT ; 
 int /*<<< orphan*/  IDS_DISCONNECT ; 
 int /*<<< orphan*/  IDS_NEWWINONCONNECT ; 
 int /*<<< orphan*/  IDS_SHAREAS ; 
 int /*<<< orphan*/  IDS_STOPSHARE ; 
 int /*<<< orphan*/  IDS_UNDELETE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int MF_BYCOMMAND ; 
 int MF_BYPOSITION ; 
 int MF_CHECKED ; 
 int MF_GRAYED ; 
 int MF_SEPARATOR ; 
 int MF_STRING ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_CONNECTDLG ; 
 int /*<<< orphan*/  NS_SHAREDLG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNDELETE_ENTRYA ; 
 int /*<<< orphan*/  UNDELETE_ENTRYW ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ bDriveBar ; 
 scalar_t__ bIndexOnLaunch ; 
 scalar_t__ bMinOnRun ; 
 scalar_t__ bNewWinOnConnect ; 
 scalar_t__ bSaveSettings ; 
 scalar_t__ bStatusBar ; 
 scalar_t__ bToolbar ; 
 int /*<<< orphan*/  bUndeleteUnicode ; 
 int /*<<< orphan*/  hAppInstance ; 
 int /*<<< orphan*/ * hModUndelete ; 
 int /*<<< orphan*/  hwndFrame ; 
 scalar_t__ lpfpUndelete ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ nFloppies ; 
 int /*<<< orphan*/  szNULL ; 
 int /*<<< orphan*/  szSettings ; 
 int /*<<< orphan*/  szTheINIFile ; 
 int /*<<< orphan*/  szUndelete ; 

VOID
FUNC19()
{
   HMENU hMenu;
   TCHAR szValue[MAXPATHLEN];
   HMENU hMenuOptions;

   TCHAR szPathName[MAXPATHLEN];

   FUNC7(szSettings, szUndelete, szNULL, szValue, FUNC1(szValue), szTheINIFile);

   if (szValue[0]) {

      // create explicit filename to avoid searching the path

      FUNC10(szPathName, FUNC1(szPathName));
      FUNC0(szPathName);
      FUNC18(szPathName, szValue);

      hModUndelete = FUNC14(szValue);

      if (hModUndelete) {
         lpfpUndelete = (FM_UNDELETE_PROC)FUNC8(hModUndelete, UNDELETE_ENTRYW);

         if (lpfpUndelete) {
            bUndeleteUnicode = TRUE;
         } else {
            lpfpUndelete = (FM_UNDELETE_PROC)FUNC8(hModUndelete, UNDELETE_ENTRYA);
            bUndeleteUnicode = FALSE;
         }

         if (lpfpUndelete) {
            hMenu = FUNC9(FUNC6(hwndFrame), FUNC16(IDM_FILE));
            FUNC15(hAppInstance, IDS_UNDELETE, szValue, FUNC1(szValue));
            FUNC13(hMenu, 4, MF_BYPOSITION | MF_STRING, IDM_UNDELETE, szValue);
         }
      } else {
         FUNC5(hModUndelete);
         hModUndelete = NULL;
      }
   }

   //
   // use submenu because we are doing this by position
   //
   hMenu = FUNC9(FUNC6(hwndFrame), FUNC16(IDM_DISK));

   if (FUNC17(NS_CONNECTDLG)) {  // Network Connections...

      FUNC13(hMenu, 4, MF_BYPOSITION | MF_SEPARATOR, 0, NULL);

      FUNC15(hAppInstance, IDS_NEWWINONCONNECT, szValue, FUNC1(szValue));
      hMenuOptions = FUNC9(FUNC6(hwndFrame), 4);
      FUNC13(hMenuOptions, 8, MF_BYPOSITION | MF_STRING, IDM_NEWWINONCONNECT, szValue);

      FUNC15(hAppInstance, IDS_CONNECT, szValue, FUNC1(szValue));
      FUNC13(hMenu, 5, MF_BYPOSITION | MF_STRING, IDM_CONNECT, szValue);

      FUNC15(hAppInstance, IDS_DISCONNECT, szValue, FUNC1(szValue));
      FUNC13(hMenu, 6, MF_BYPOSITION | MF_STRING, IDM_DISCONNECT, szValue);

   }

   // Shared Directories
   if (FUNC17(NS_SHAREDLG)) {

      FUNC13(hMenu, 7, MF_BYPOSITION | MF_SEPARATOR, 0, NULL);

      FUNC15(hAppInstance, IDS_SHAREAS, szValue, FUNC1(szValue));
      FUNC13(hMenu, 8, MF_BYPOSITION | MF_STRING, IDM_SHAREAS, szValue);

      FUNC15(hAppInstance, IDS_STOPSHARE, szValue, FUNC1(szValue));
      FUNC13(hMenu, 9, MF_BYPOSITION | MF_STRING, IDM_STOPSHARE, szValue);

   }

   //
   // Init the Disk menu.
   //
   hMenu = FUNC6(hwndFrame);

   if (nFloppies == 0) {
      FUNC4(hMenu, IDM_DISKCOPY, MF_BYCOMMAND | MF_GRAYED);
   }


   if (bStatusBar)
      FUNC2(hMenu, IDM_STATUSBAR, MF_BYCOMMAND | MF_CHECKED);
   if (bMinOnRun)
      FUNC2(hMenu, IDM_MINONRUN,  MF_BYCOMMAND | MF_CHECKED);
   if (bIndexOnLaunch)
      FUNC2(hMenu, IDM_INDEXONLAUNCH, MF_BYCOMMAND | MF_CHECKED);

   if (bSaveSettings)
      FUNC2(hMenu, IDM_SAVESETTINGS,  MF_BYCOMMAND | MF_CHECKED);

   if (bDriveBar)
      FUNC2(hMenu, IDM_DRIVEBAR, MF_BYCOMMAND | MF_CHECKED);
   if (bToolbar)
      FUNC2(hMenu, IDM_TOOLBAR, MF_BYCOMMAND | MF_CHECKED);

   if (bNewWinOnConnect)
      FUNC2(hMenu, IDM_NEWWINONCONNECT, MF_BYCOMMAND | MF_CHECKED);


   //
   // Init menus after the window/menu has been created
   //
   FUNC11();

   FUNC12();

   //
   // Redraw the menu bar since it's already displayed
   //
   FUNC3(hwndFrame);
}