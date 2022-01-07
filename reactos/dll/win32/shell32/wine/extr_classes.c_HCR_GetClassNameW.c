
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int REFIID ;
typedef int PVOID ;
typedef scalar_t__* LPWSTR ;
typedef char* LPOLESTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CLSID_AdminFolderShortcut ;
 int CLSID_ControlPanel ;
 int CLSID_MyComputer ;
 int CLSID_MyDocuments ;
 int CLSID_RecycleBin ;
 int CLSID_ShellDesktop ;
 int CoTaskMemFree (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ HCR_RegOpenClassIDKey (int ,int *) ;
 int HKEY_CURRENT_USER ;
 int IDS_ADMINISTRATIVETOOLS ;
 int IDS_CONTROLPANEL ;
 int IDS_DESKTOP ;
 int IDS_MYCOMPUTER ;
 int IDS_PERSONAL ;
 int IDS_RECYCLEBIN_FOLDER_NAME ;
 scalar_t__ IsEqualIID (int ,int *) ;
 scalar_t__ LoadStringW (int ,int ,scalar_t__*,int) ;
 int RRF_RT_REG_SZ ;
 int RegCloseKey (int ) ;
 int RegGetValueW (int ,char*,int *,int ,int *,int ,int*) ;
 int RegLoadMUIStringW (int ,char const*,scalar_t__*,int,int *,int ,int *) ;
 int RegQueryValueExW (int ,int ,int ,int *,int ,int*) ;
 scalar_t__ S_OK ;
 scalar_t__ StringFromCLSID (int ,char**) ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int debugstr_w (scalar_t__*) ;
 int shell32_hInstance ;
 int swEmpty ;
 int swprintf (char*,char*,char*) ;

BOOL HCR_GetClassNameW(REFIID riid, LPWSTR szDest, DWORD len)
{
 HKEY hkey;
 BOOL ret = FALSE;
 DWORD buflen = len;





  szDest[0] = 0;
 if (HCR_RegOpenClassIDKey(riid, &hkey))

 {
          static const WCHAR wszLocalizedString[] =
            { 'L','o','c','a','l','i','z','e','d','S','t','r','i','n','g', 0 };
          if (!RegLoadMUIStringW(hkey, wszLocalizedString, szDest, len, ((void*)0), 0, ((void*)0)) ||
              !RegQueryValueExW(hkey, swEmpty, 0, ((void*)0), (LPBYTE)szDest, &len))
          {
     ret = TRUE;
   }
   RegCloseKey(hkey);
 }

 if (!ret || !szDest[0])
 {
   if(IsEqualIID(riid, &CLSID_ShellDesktop))
   {
     if (LoadStringW(shell32_hInstance, IDS_DESKTOP, szDest, buflen))
       ret = TRUE;
   }
   else if (IsEqualIID(riid, &CLSID_MyComputer))
   {
     if(LoadStringW(shell32_hInstance, IDS_MYCOMPUTER, szDest, buflen))
       ret = TRUE;
   }
 }
 TRACE("-- %s\n", debugstr_w(szDest));
 return ret;
}
