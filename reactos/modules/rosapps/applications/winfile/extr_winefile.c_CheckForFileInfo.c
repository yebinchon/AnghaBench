
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PropertiesDialog {int pVersionData; } ;
struct LANGANDCODEPAGE {int wCodePage; int wLanguage; } ;
typedef char WCHAR ;
struct TYPE_2__ {int dwFileVersionLS; int dwFileVersionMS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef int UINT ;
typedef scalar_t__* PVOID ;
typedef scalar_t__ LPVOID ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LPCSTR ;
typedef scalar_t__ LPBYTE ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int BUFFER_LEN ;
 int CP_ACP ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetFileVersionInfoSizeW (scalar_t__,int *) ;
 scalar_t__ GetFileVersionInfoW (scalar_t__,int ,scalar_t__,int ) ;
 int GetProcessHeap () ;
 int HIWORD (int ) ;
 int HeapAlloc (int ,int ,scalar_t__) ;
 int IDC_LIST_PROP_VERSION_TYPES ;
 int IDC_LIST_PROP_VERSION_VALUES ;
 int IDC_STATIC_PROP_VERSION ;
 scalar_t__* InfoStrings ;
 int LB_ADDSTRING ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int LOWORD (int ) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,char*,int) ;
 int PropDlg_DisplayValue (int ,int ) ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetDlgItemTextW (int ,int ,char*) ;
 scalar_t__ VerQueryValueW (int ,char const*,scalar_t__*,int*) ;
 int sprintfW (char*,char const*,int ,int ,int ,int ) ;
 int wsprintfW (char*,char const*,int ,int ,char*) ;

__attribute__((used)) static void CheckForFileInfo(struct PropertiesDialog* dlg, HWND hwnd, LPCWSTR strFilename)
{
 static const WCHAR sBackSlash[] = {'\\','\0'};
 static const WCHAR sTranslation[] = {'\\','V','a','r','F','i','l','e','I','n','f','o','\\','T','r','a','n','s','l','a','t','i','o','n','\0'};
 static const WCHAR sStringFileInfo[] = {'\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o','\\',
          '%','0','4','x','%','0','4','x','\\','%','s','\0'};
        static const WCHAR sFmt[] = {'%','d','.','%','d','.','%','d','.','%','d','\0'};
 DWORD dwVersionDataLen = GetFileVersionInfoSizeW(strFilename, ((void*)0));

 if (dwVersionDataLen) {
  dlg->pVersionData = HeapAlloc(GetProcessHeap(), 0, dwVersionDataLen);

  if (GetFileVersionInfoW(strFilename, 0, dwVersionDataLen, dlg->pVersionData)) {
   LPVOID pVal;
   UINT nValLen;

   if (VerQueryValueW(dlg->pVersionData, sBackSlash, &pVal, &nValLen)) {
    if (nValLen == sizeof(VS_FIXEDFILEINFO)) {
     VS_FIXEDFILEINFO* pFixedFileInfo = (VS_FIXEDFILEINFO*)pVal;
                                        WCHAR buffer[BUFFER_LEN];

                                        sprintfW(buffer, sFmt,
                                                 HIWORD(pFixedFileInfo->dwFileVersionMS), LOWORD(pFixedFileInfo->dwFileVersionMS),
                                                 HIWORD(pFixedFileInfo->dwFileVersionLS), LOWORD(pFixedFileInfo->dwFileVersionLS));

                                        SetDlgItemTextW(hwnd, IDC_STATIC_PROP_VERSION, buffer);
    }
   }


   if (VerQueryValueW(dlg->pVersionData, sTranslation, &pVal, &nValLen)) {
    struct LANGANDCODEPAGE* pTranslate = (struct LANGANDCODEPAGE*)pVal;
    struct LANGANDCODEPAGE* pEnd = (struct LANGANDCODEPAGE*)((LPBYTE)pVal+nValLen);

    HWND hlbox = GetDlgItem(hwnd, IDC_LIST_PROP_VERSION_TYPES);


    for(; pTranslate<pEnd; ++pTranslate) {
     LPCSTR* p;

     for(p=InfoStrings; *p; ++p) {
      WCHAR subblock[200];
      WCHAR infoStr[100];
      LPCWSTR pTxt;
      UINT nValLen;

      LPCSTR pInfoString = *p;
      MultiByteToWideChar(CP_ACP, 0, pInfoString, -1, infoStr, 100);
      wsprintfW(subblock, sStringFileInfo, pTranslate->wLanguage, pTranslate->wCodePage, infoStr);


      if (VerQueryValueW(dlg->pVersionData, subblock, (PVOID)&pTxt, &nValLen)) {
       int idx = SendMessageW(hlbox, LB_ADDSTRING, 0L, (LPARAM)infoStr);
       SendMessageW(hlbox, LB_SETITEMDATA, idx, (LPARAM)pTxt);
      }
     }
    }

    SendMessageW(hlbox, LB_SETCURSEL, 0, 0);

    PropDlg_DisplayValue(hlbox, GetDlgItem(hwnd,IDC_LIST_PROP_VERSION_VALUES));
   }
  }
 }
}
