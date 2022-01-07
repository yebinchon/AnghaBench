
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT_PTR ;
typedef void* UINT ;
struct TYPE_6__ {void* bRestored; scalar_t__ iStartBmp; scalar_t__ idBitmap; int * hbmButtons; void* bUnicode; scalar_t__ hMenu; scalar_t__ hModule; void* Delta; scalar_t__ (* ExtProc ) (int ,int ,int ) ;} ;
struct TYPE_5__ {int dwSize; int szMenuName; scalar_t__ hMenu; void* wMenuDelta; } ;
struct TYPE_4__ {int dwSize; int szMenuName; scalar_t__ hMenu; void* wMenuDelta; } ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ HMENU ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ (* FM_EXT_PROC ) (int ,int ,int ) ;
typedef TYPE_1__ FMS_LOADW ;
typedef TYPE_2__ FMS_LOADA ;
typedef void* BOOL ;


 int ASSERT (int) ;
 int BiasMenu (scalar_t__,void*) ;
 int COUNTOF (scalar_t__*) ;
 void* FALSE ;
 int FMEVENT_LOAD ;
 int FM_EXT_PROC_ENTRYA ;
 int FM_EXT_PROC_ENTRYW ;
 int FreeLibrary (scalar_t__) ;
 scalar_t__ GetMenu (int ) ;
 int GetPrivateProfileString (int ,scalar_t__*,int ,scalar_t__*,int ,int ) ;
 scalar_t__ GetProcAddress (scalar_t__,int ) ;
 int IDM_EXTENSIONS ;
 int InsertMenuA (scalar_t__,scalar_t__,int,int ,int ) ;
 int InsertMenuW (scalar_t__,scalar_t__,int,int ,int ) ;
 scalar_t__ LoadLibrary (scalar_t__*) ;
 int MAXPATHLEN ;
 int MAX_EXTENSIONS ;
 int MF_BYPOSITION ;
 int MF_POPUP ;
 scalar_t__ MapIDMToMenuPos (int) ;
 int PROFILE_STRING_SIZ ;
 void* TRUE ;
 int bSecMenuDeleted ;
 TYPE_3__* extensions ;
 int hwndFrame ;
 int iNumExtensions ;
 scalar_t__ lstrlen (scalar_t__*) ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int szAddons ;
 int szNULL ;
 int szTheINIFile ;

VOID
InitExtensions()
{
   TCHAR szBuf[PROFILE_STRING_SIZ];
   TCHAR szPath[MAXPATHLEN];
   LPTSTR p;
   HANDLE hMod;
   FM_EXT_PROC fp;
   HMENU hMenu;
   INT iMenuBase;
   HMENU hMenuFrame;
   INT iMenuOffset=0;
   BOOL bUnicode;

   hMenuFrame = GetMenu(hwndFrame);

   ASSERT(!bSecMenuDeleted);
   iMenuBase = MapIDMToMenuPos(IDM_EXTENSIONS);

   GetPrivateProfileString(szAddons, ((void*)0), szNULL, szBuf, COUNTOF(szBuf), szTheINIFile);

   for (p = szBuf; *p && iNumExtensions < MAX_EXTENSIONS; p += lstrlen(p) + 1) {

      GetPrivateProfileString(szAddons, p, szNULL, szPath, COUNTOF(szPath), szTheINIFile);

      hMod = LoadLibrary(szPath);

      if (hMod) {
         fp = (FM_EXT_PROC)GetProcAddress(hMod, FM_EXT_PROC_ENTRYW);
         if (fp) {
            bUnicode = TRUE;
         } else {
            fp = (FM_EXT_PROC)GetProcAddress(hMod, FM_EXT_PROC_ENTRYA);
            bUnicode = FALSE;
         }

         if (fp) {
            UINT bias;
            FMS_LOADA lsA;
            FMS_LOADW lsW;

            bias = ((IDM_EXTENSIONS + iNumExtensions + 1)*100);
            if (bUnicode)
               lsW.wMenuDelta = bias;
            else
               lsA.wMenuDelta = bias;

            if ((*fp)(hwndFrame, FMEVENT_LOAD, bUnicode ? (LPARAM)&lsW : (LPARAM)&lsA)) {

               if ((bUnicode ? lsW.dwSize : lsA.dwSize)
                  != (bUnicode ? sizeof(FMS_LOADW) : sizeof(FMS_LOADA)))
                  goto LoadFail;

               hMenu = bUnicode ? lsW.hMenu : lsA.hMenu;

               extensions[iNumExtensions].ExtProc = fp;
               extensions[iNumExtensions].Delta = bias;
               extensions[iNumExtensions].hModule = hMod;
               extensions[iNumExtensions].hMenu = hMenu;
               extensions[iNumExtensions].bUnicode = bUnicode;


               extensions[iNumExtensions].hbmButtons = ((void*)0);
               extensions[iNumExtensions].idBitmap = 0;
               extensions[iNumExtensions].iStartBmp = 0;
               extensions[iNumExtensions].bRestored = FALSE;

               if (hMenu) {
                  BiasMenu(hMenu, bias);

                  if (bUnicode) {
                     InsertMenuW(hMenuFrame,
                        iMenuBase + iMenuOffset,
                        MF_BYPOSITION | MF_POPUP,
                        (UINT_PTR) hMenu, lsW.szMenuName);
                  } else {
                     InsertMenuA(hMenuFrame,
                        iMenuBase + iMenuOffset,
                        MF_BYPOSITION | MF_POPUP,
                        (UINT_PTR) hMenu, lsA.szMenuName);
                  }
                  iMenuOffset++;
               }

               iNumExtensions++;

            } else {
               goto LoadFail;
            }
         } else {
LoadFail:
            FreeLibrary(hMod);
         }
      }
   }
}
