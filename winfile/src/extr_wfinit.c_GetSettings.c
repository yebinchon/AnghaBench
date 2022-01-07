
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VOID ;
typedef int TCHAR ;
typedef void* INT ;


 void* ANSI_CHARSET ;
 int CLIP_DEFAULT_PRECIS ;
 int COUNTOF (int *) ;
 int CreateFont (void*,int ,int ,int ,void*,int,int ,int ,void*,int ,int ,int ,int,int *) ;
 int DEFAULT_PITCH ;
 int DEFAULT_QUALITY ;
 int DefaultLayoutRTL () ;
 int FF_SWISS ;
 void* GetHeightFromPointsString (int *) ;
 void* GetPrivateProfileInt (int ,int ,int,int ) ;
 int GetPrivateProfileString (int ,int ,int ,int *,int ,int ) ;
 int OUT_DEFAULT_PRECIS ;
 int SHIFTJIS_CHARSET ;
 int TA_ITALIC ;
 int TEXT (char*) ;
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
 int hFont ;
 int szChangeNotifyTime ;
 int szConfirmDelete ;
 int szConfirmFormat ;
 int szConfirmMouse ;
 int szConfirmReadOnly ;
 int szConfirmReplace ;
 int szConfirmSubDel ;
 int szDisableVisualStyles ;
 int szDriveBar ;
 int szFace ;
 int szFaceWeight ;
 int szHelv ;
 int szIndexOnLaunch ;
 int szLowerCase ;
 int szMinOnRun ;
 int szMirrorContent ;
 int szNewWinOnNetConnect ;
 int szSaveCharset ;
 int szSaveSettings ;
 int szSettings ;
 int szSize ;
 int szStatusBar ;
 int szTheINIFile ;
 int szToolbar ;
 int uChangeNotifyTime ;
 int wTextAttribs ;

VOID
GetSettings()
{
   TCHAR szTemp[128];
   INT size;
   INT weight;

   INT bfCharset;


   bMinOnRun = GetPrivateProfileInt(szSettings, szMinOnRun, bMinOnRun, szTheINIFile);
   bIndexOnLaunch = GetPrivateProfileInt(szSettings, szIndexOnLaunch, bIndexOnLaunch, szTheINIFile);
   wTextAttribs = (WORD)GetPrivateProfileInt(szSettings, szLowerCase, wTextAttribs, szTheINIFile);
   bStatusBar = GetPrivateProfileInt(szSettings, szStatusBar, bStatusBar, szTheINIFile);
   bDisableVisualStyles = GetPrivateProfileInt(szSettings, szDisableVisualStyles, bDisableVisualStyles, szTheINIFile);
   bMirrorContent = GetPrivateProfileInt(szSettings, szMirrorContent, DefaultLayoutRTL(), szTheINIFile);

   bDriveBar = GetPrivateProfileInt(szSettings, szDriveBar, bDriveBar, szTheINIFile);
   bToolbar = GetPrivateProfileInt(szSettings, szToolbar, bToolbar, szTheINIFile);

   bNewWinOnConnect = GetPrivateProfileInt(szSettings, szNewWinOnNetConnect, bNewWinOnConnect, szTheINIFile);
   bConfirmDelete = GetPrivateProfileInt(szSettings, szConfirmDelete, bConfirmDelete, szTheINIFile);
   bConfirmSubDel = GetPrivateProfileInt(szSettings, szConfirmSubDel, bConfirmSubDel, szTheINIFile);
   bConfirmReplace = GetPrivateProfileInt(szSettings, szConfirmReplace,bConfirmReplace,szTheINIFile);
   bConfirmMouse = GetPrivateProfileInt(szSettings, szConfirmMouse, bConfirmMouse, szTheINIFile);
   bConfirmFormat = GetPrivateProfileInt(szSettings, szConfirmFormat, bConfirmFormat, szTheINIFile);
   bConfirmReadOnly= GetPrivateProfileInt(szSettings, szConfirmReadOnly, bConfirmReadOnly, szTheINIFile);
   uChangeNotifyTime= GetPrivateProfileInt(szSettings, szChangeNotifyTime, uChangeNotifyTime, szTheINIFile);
   bSaveSettings = GetPrivateProfileInt(szSettings, szSaveSettings, bSaveSettings, szTheINIFile);
   weight = GetPrivateProfileInt(szSettings, szFaceWeight, 400, szTheINIFile);

   GetPrivateProfileString(szSettings,
                           szSize,
                           bJAPAN ?
                              TEXT("14") :
                              TEXT("8"),
                           szTemp,
                           COUNTOF(szTemp),
                           szTheINIFile);

   size = GetHeightFromPointsString(szTemp);

   GetPrivateProfileString(szSettings,
                           szFace,
      szHelv,
                           szTemp,
                           COUNTOF(szTemp),
                           szTheINIFile);


   bfCharset = bJAPAN ?
                  GetPrivateProfileInt(szSettings,
                                       szSaveCharset,
                                       SHIFTJIS_CHARSET,
                                       szTheINIFile) :
                  ANSI_CHARSET;

   hFont = CreateFont(size,
                      0, 0, 0, weight,
                      wTextAttribs & TA_ITALIC, 0, 0,
                      bfCharset,
                      OUT_DEFAULT_PRECIS,
                      CLIP_DEFAULT_PRECIS,
                      DEFAULT_QUALITY,
                      DEFAULT_PITCH | FF_SWISS,
                      szTemp);

}
