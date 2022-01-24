#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t UINT ;
struct TYPE_2__ {int /*<<< orphan*/  idString; scalar_t__ pszName; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ LPTSTR ;
typedef  long LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 void* CHAR_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDD_VERSION_KEY ; 
 int /*<<< orphan*/  IDS_VN_LANGUAGE ; 
 int /*<<< orphan*/  IDS_VN_LANGUAGES ; 
 int /*<<< orphan*/  LBN_SELCHANGE ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t MAX_VERNAMES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int VER_KEY_END ; 
 size_t FUNC7 (int /*<<< orphan*/ ,void**,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void**,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 int cXlate ; 
 size_t cchXlateString ; 
 int /*<<< orphan*/  hAppInstance ; 
 int /*<<< orphan*/  lpVersionBuffer ; 
 int /*<<< orphan*/ * lpXlate ; 
 int /*<<< orphan*/  FUNC9 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 size_t FUNC11 (void**) ; 
 void** pszXlate ; 
 scalar_t__ szFileVersion ; 
 scalar_t__ szLegalCopyright ; 
 scalar_t__ szMessage ; 
 void** szVersionKey ; 
 TYPE_1__* vernames ; 

VOID
FUNC12(HWND hDlg)
{
   LPTSTR lpszKey, lpszValue;

   DWORD cbValue;
   UINT i, j, cchOffset;
   INT idx;
   HWND hwndLB;

   hwndLB = FUNC2(hDlg, IDD_VERSION_KEY);

   szVersionKey[VER_KEY_END - 1] = CHAR_NULL;        // strip the backslash

   for (j=0; FUNC8(lpVersionBuffer,
                                szVersionKey,
                                j,
                                (LPVOID*)&lpszKey,
                                (LPVOID*)&lpszValue,
                                &cbValue);  j++) {

      if (!FUNC10(lpszKey, szFileVersion) ||
          !FUNC10(lpszKey, szLegalCopyright)) {

          continue;
      }

      for (i=0; i<MAX_VERNAMES; i++)
         if (!FUNC10(vernames[i].pszName, lpszKey))
            break;

      if (i != MAX_VERNAMES && FUNC3(hAppInstance, vernames[i].idString, szMessage, FUNC0(szMessage)))
         lpszKey=szMessage;

      idx = (INT)FUNC5(hwndLB, LB_ADDSTRING, 0, (LPARAM)lpszKey);

      //
      // Only add if the value len isn't zero.
      // This is checked in the SendMessage 4th parm.
      //
      if (idx != LB_ERR)
         FUNC5(hwndLB, LB_SETITEMDATA, idx, (LPARAM)lpszValue);
   }

   //
   // Now look at the \VarFileInfo\Translations section and add an
   // item for the language(s) this file supports.
   //

   if (lpXlate == NULL || pszXlate == NULL)
      goto Done;

   if (!FUNC3(hAppInstance, (cXlate == 1) ? IDS_VN_LANGUAGE : IDS_VN_LANGUAGES,
      szMessage, FUNC0(szMessage)))

      goto Done;

   idx = FUNC5(hwndLB, LB_ADDSTRING, 0, (LPARAM)szMessage);
   if (idx == LB_ERR)
      goto Done;

   pszXlate[0] = CHAR_NULL;
   cchOffset = 0;
   for (i=0; i<cXlate; i++) {
      if (cchOffset + 2 > cchXlateString)
         break;
      if (i != 0) {
         FUNC9(pszXlate, FUNC6(", "));
         cchOffset += 2;
      }

      if (FUNC7(lpXlate[i*2],
                          pszXlate+cchOffset,
                          cchXlateString-cchOffset
                          ) > cchXlateString - cchOffset)

         break;

      cchOffset += FUNC11(pszXlate+cchOffset);
   }
   pszXlate[cchXlateString-1] = CHAR_NULL;

   FUNC5(hwndLB, LB_SETITEMDATA, idx, (LPARAM)pszXlate);

Done:

   FUNC5(hwndLB, LB_SETCURSEL, 0, 0L);
   FUNC4(hDlg, WM_COMMAND, FUNC1(IDD_VERSION_KEY, NULL, LBN_SELCHANGE));
}