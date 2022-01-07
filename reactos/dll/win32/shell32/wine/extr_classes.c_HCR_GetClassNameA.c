
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int PVOID ;
typedef scalar_t__* LPSTR ;
typedef int LPOLESTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int CLSID_AdminFolderShortcut ;
 int CLSID_ControlPanel ;
 int CLSID_MyComputer ;
 int CLSID_MyDocuments ;
 int CLSID_RecycleBin ;
 int CLSID_ShellDesktop ;
 int CoTaskMemFree (int ) ;
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
 scalar_t__ LoadStringA (int ,int ,scalar_t__*,int) ;
 int RRF_RT_REG_SZ ;
 int RegCloseKey (int ) ;
 int RegGetValueA (int ,int *,int *,int ,int *,int ,int*) ;
 int RegLoadMUIStringA (int ,char*,scalar_t__*,int,int *,int ,int *) ;
 int RegQueryValueExA (int ,char*,int ,int *,int ,int*) ;
 scalar_t__ S_OK ;
 scalar_t__ StringFromCLSID (int ,int *) ;
 int TRACE (char*,scalar_t__*) ;
 scalar_t__ TRUE ;
 int shell32_hInstance ;
 int sprintf (int *,char*,int ) ;

BOOL HCR_GetClassNameA(REFIID riid, LPSTR szDest, DWORD len)
{ HKEY hkey;
 BOOL ret = FALSE;
 DWORD buflen = len;





 szDest[0] = 0;
 if (HCR_RegOpenClassIDKey(riid, &hkey))

 {
          if (!RegLoadMUIStringA(hkey,"LocalizedString",szDest,len,((void*)0),0,((void*)0)) ||
              !RegQueryValueExA(hkey,"",0,((void*)0),(LPBYTE)szDest,&len))
          {
     ret = TRUE;
   }
   RegCloseKey(hkey);
 }

 if (!ret || !szDest[0])
 {
   if(IsEqualIID(riid, &CLSID_ShellDesktop))
   {
     if (LoadStringA(shell32_hInstance, IDS_DESKTOP, szDest, buflen))
       ret = TRUE;
   }
   else if (IsEqualIID(riid, &CLSID_MyComputer))
   {
     if(LoadStringA(shell32_hInstance, IDS_MYCOMPUTER, szDest, buflen))
       ret = TRUE;
   }
 }

 TRACE("-- (%s)\n", szDest);

 return ret;
}
