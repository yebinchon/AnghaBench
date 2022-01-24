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
typedef  int WORD ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  void* INT ;

/* Variables and functions */
 void* ANSI_CHARSET ; 
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int DEFAULT_PITCH ; 
 int /*<<< orphan*/  DEFAULT_QUALITY ; 
 int FUNC2 () ; 
 int FF_SWISS ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int SHIFTJIS_CHARSET ; 
 int TA_ITALIC ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int bConfirmDelete ; 
 int bConfirmFormat ; 
 int bConfirmMouse ; 
 int bConfirmReadOnly ; 
 int bConfirmReplace ; 
 int bConfirmSubDel ; 
 int bDisableVisualStyles ; 
 int bDriveBar ; 
 int bIndexOnLaunch ; 
 scalar_t__ bJAPAN ; 
 int bMinOnRun ; 
 void* bMirrorContent ; 
 int bNewWinOnConnect ; 
 int bSaveSettings ; 
 int bStatusBar ; 
 int bToolbar ; 
 int /*<<< orphan*/  hFont ; 
 int /*<<< orphan*/  szChangeNotifyTime ; 
 int /*<<< orphan*/  szConfirmDelete ; 
 int /*<<< orphan*/  szConfirmFormat ; 
 int /*<<< orphan*/  szConfirmMouse ; 
 int /*<<< orphan*/  szConfirmReadOnly ; 
 int /*<<< orphan*/  szConfirmReplace ; 
 int /*<<< orphan*/  szConfirmSubDel ; 
 int /*<<< orphan*/  szDisableVisualStyles ; 
 int /*<<< orphan*/  szDriveBar ; 
 int /*<<< orphan*/  szFace ; 
 int /*<<< orphan*/  szFaceWeight ; 
 int /*<<< orphan*/  szHelv ; 
 int /*<<< orphan*/  szIndexOnLaunch ; 
 int /*<<< orphan*/  szLowerCase ; 
 int /*<<< orphan*/  szMinOnRun ; 
 int /*<<< orphan*/  szMirrorContent ; 
 int /*<<< orphan*/  szNewWinOnNetConnect ; 
 int /*<<< orphan*/  szSaveCharset ; 
 int /*<<< orphan*/  szSaveSettings ; 
 int /*<<< orphan*/  szSettings ; 
 int /*<<< orphan*/  szSize ; 
 int /*<<< orphan*/  szStatusBar ; 
 int /*<<< orphan*/  szTheINIFile ; 
 int /*<<< orphan*/  szToolbar ; 
 int uChangeNotifyTime ; 
 int wTextAttribs ; 

VOID
FUNC7()
{
   TCHAR szTemp[128];
   INT size;
   INT weight;

   INT bfCharset;

   /* Get the flags out of the INI file. */
   bMinOnRun            = FUNC4(szSettings, szMinOnRun,            bMinOnRun,            szTheINIFile);
   bIndexOnLaunch       = FUNC4(szSettings, szIndexOnLaunch,       bIndexOnLaunch,       szTheINIFile);
   wTextAttribs         = (WORD)FUNC4(szSettings, szLowerCase,     wTextAttribs,         szTheINIFile);
   bStatusBar           = FUNC4(szSettings, szStatusBar,           bStatusBar,           szTheINIFile);
   bDisableVisualStyles = FUNC4(szSettings, szDisableVisualStyles, bDisableVisualStyles, szTheINIFile);
   bMirrorContent       = FUNC4(szSettings, szMirrorContent,    FUNC2(), szTheINIFile);

   bDriveBar       = FUNC4(szSettings, szDriveBar,      bDriveBar,      szTheINIFile);
   bToolbar        = FUNC4(szSettings, szToolbar,       bToolbar,       szTheINIFile);

   bNewWinOnConnect = FUNC4(szSettings, szNewWinOnNetConnect, bNewWinOnConnect, szTheINIFile);
   bConfirmDelete  = FUNC4(szSettings, szConfirmDelete, bConfirmDelete, szTheINIFile);
   bConfirmSubDel  = FUNC4(szSettings, szConfirmSubDel, bConfirmSubDel, szTheINIFile);
   bConfirmReplace = FUNC4(szSettings, szConfirmReplace,bConfirmReplace,szTheINIFile);
   bConfirmMouse   = FUNC4(szSettings, szConfirmMouse,  bConfirmMouse,  szTheINIFile);
   bConfirmFormat  = FUNC4(szSettings, szConfirmFormat, bConfirmFormat, szTheINIFile);
   bConfirmReadOnly= FUNC4(szSettings, szConfirmReadOnly, bConfirmReadOnly, szTheINIFile);
   uChangeNotifyTime= FUNC4(szSettings, szChangeNotifyTime, uChangeNotifyTime, szTheINIFile);
   bSaveSettings   = FUNC4(szSettings, szSaveSettings,  bSaveSettings, szTheINIFile);
   weight = FUNC4(szSettings, szFaceWeight, 400, szTheINIFile);

   FUNC5(szSettings,
                           szSize,
                           bJAPAN ?
                              FUNC6("14") :
                              FUNC6("8"),
                           szTemp,
                           FUNC0(szTemp),
                           szTheINIFile);

   size = FUNC3(szTemp);

   FUNC5(szSettings,
                           szFace,
			   szHelv,
                           szTemp,
                           FUNC0(szTemp),
                           szTheINIFile);


   bfCharset = bJAPAN ?
                  FUNC4(szSettings,
                                       szSaveCharset,
                                       SHIFTJIS_CHARSET,
                                       szTheINIFile) :
                  ANSI_CHARSET;

   hFont = FUNC1(size,
                      0, 0, 0, weight,
                      wTextAttribs & TA_ITALIC, 0, 0,
                      bfCharset,
                      OUT_DEFAULT_PRECIS,
                      CLIP_DEFAULT_PRECIS,
                      DEFAULT_QUALITY,
                      DEFAULT_PITCH | FF_SWISS,
                      szTemp);

}