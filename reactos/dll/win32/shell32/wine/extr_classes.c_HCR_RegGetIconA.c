
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int LPCSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ExpandEnvironmentStringsA (char*,char*,int) ;
 int FALSE ;
 int MAX_PATH ;
 scalar_t__ ParseFieldA (char*,int,char*,scalar_t__) ;
 int PathUnquoteSpacesA (char*) ;
 scalar_t__ REG_EXPAND_SZ ;
 int RegQueryValueExA (int ,int ,int ,scalar_t__*,int ,scalar_t__*) ;
 int TRUE ;
 int atoi (char*) ;
 int lstrcpynA (char*,char*,scalar_t__) ;

__attribute__((used)) static BOOL HCR_RegGetIconA(HKEY hkey, LPSTR szDest, LPCSTR szName, DWORD len, int* picon_idx)
{
 DWORD dwType;
 char sTemp[MAX_PATH];
 char sNum[5];

 if (!RegQueryValueExA(hkey, szName, 0, &dwType, (LPBYTE)szDest, &len))
 {
          if (dwType == REG_EXPAND_SZ)
   {
     ExpandEnvironmentStringsA(szDest, sTemp, MAX_PATH);
     lstrcpynA(szDest, sTemp, len);
   }
   if (ParseFieldA (szDest, 2, sNum, 5))
             *picon_idx=atoi(sNum);
          else
             *picon_idx=0;
   ParseFieldA (szDest, 1, szDest, len);
          PathUnquoteSpacesA(szDest);
   return TRUE;
 }
 return FALSE;
}
