
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef size_t UINT ;
struct TYPE_2__ {int idString; scalar_t__ pszName; } ;
typedef int LPVOID ;
typedef scalar_t__ LPTSTR ;
typedef long LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int DWORD ;


 void* CHAR_NULL ;
 int COUNTOF (scalar_t__) ;
 int GET_WM_COMMAND_MPS (int ,int *,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDD_VERSION_KEY ;
 int IDS_VN_LANGUAGE ;
 int IDS_VN_LANGUAGES ;
 int LBN_SELCHANGE ;
 int LB_ADDSTRING ;
 scalar_t__ LB_ERR ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 scalar_t__ LoadString (int ,int ,scalar_t__,int ) ;
 size_t MAX_VERNAMES ;
 int PostMessage (int ,int ,int ) ;
 scalar_t__ SendMessage (int ,int ,scalar_t__,long) ;
 int TEXT (char*) ;
 int VER_KEY_END ;
 size_t VerLanguageName (int ,void**,size_t) ;
 scalar_t__ VerQueryValueIndexW (int ,void**,size_t,int *,int *,int *) ;
 int WM_COMMAND ;
 int cXlate ;
 size_t cchXlateString ;
 int hAppInstance ;
 int lpVersionBuffer ;
 int * lpXlate ;
 int lstrcat (void**,int ) ;
 int lstrcmp (scalar_t__,scalar_t__) ;
 size_t lstrlen (void**) ;
 void** pszXlate ;
 scalar_t__ szFileVersion ;
 scalar_t__ szLegalCopyright ;
 scalar_t__ szMessage ;
 void** szVersionKey ;
 TYPE_1__* vernames ;

VOID
FillVersionList(HWND hDlg)
{
   LPTSTR lpszKey, lpszValue;

   DWORD cbValue;
   UINT i, j, cchOffset;
   INT idx;
   HWND hwndLB;

   hwndLB = GetDlgItem(hDlg, IDD_VERSION_KEY);

   szVersionKey[VER_KEY_END - 1] = CHAR_NULL;

   for (j=0; VerQueryValueIndexW(lpVersionBuffer,
                                szVersionKey,
                                j,
                                (LPVOID*)&lpszKey,
                                (LPVOID*)&lpszValue,
                                &cbValue); j++) {

      if (!lstrcmp(lpszKey, szFileVersion) ||
          !lstrcmp(lpszKey, szLegalCopyright)) {

          continue;
      }

      for (i=0; i<MAX_VERNAMES; i++)
         if (!lstrcmp(vernames[i].pszName, lpszKey))
            break;

      if (i != MAX_VERNAMES && LoadString(hAppInstance, vernames[i].idString, szMessage, COUNTOF(szMessage)))
         lpszKey=szMessage;

      idx = (INT)SendMessage(hwndLB, LB_ADDSTRING, 0, (LPARAM)lpszKey);





      if (idx != LB_ERR)
         SendMessage(hwndLB, LB_SETITEMDATA, idx, (LPARAM)lpszValue);
   }






   if (lpXlate == ((void*)0) || pszXlate == ((void*)0))
      goto Done;

   if (!LoadString(hAppInstance, (cXlate == 1) ? IDS_VN_LANGUAGE : IDS_VN_LANGUAGES,
      szMessage, COUNTOF(szMessage)))

      goto Done;

   idx = SendMessage(hwndLB, LB_ADDSTRING, 0, (LPARAM)szMessage);
   if (idx == LB_ERR)
      goto Done;

   pszXlate[0] = CHAR_NULL;
   cchOffset = 0;
   for (i=0; i<cXlate; i++) {
      if (cchOffset + 2 > cchXlateString)
         break;
      if (i != 0) {
         lstrcat(pszXlate, TEXT(", "));
         cchOffset += 2;
      }

      if (VerLanguageName(lpXlate[i*2],
                          pszXlate+cchOffset,
                          cchXlateString-cchOffset
                          ) > cchXlateString - cchOffset)

         break;

      cchOffset += lstrlen(pszXlate+cchOffset);
   }
   pszXlate[cchXlateString-1] = CHAR_NULL;

   SendMessage(hwndLB, LB_SETITEMDATA, idx, (LPARAM)pszXlate);

Done:

   SendMessage(hwndLB, LB_SETCURSEL, 0, 0L);
   PostMessage(hDlg, WM_COMMAND, GET_WM_COMMAND_MPS(IDD_VERSION_KEY, ((void*)0), LBN_SELCHANGE));
}
