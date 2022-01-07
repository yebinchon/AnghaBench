
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ExpandEnvironmentStringsW (int *,int *,int) ;
 int FALSE ;
 int MAX_PATH ;
 int ParseFieldW (int *,int,int *,scalar_t__) ;
 int PathUnquoteSpacesW (int *) ;
 scalar_t__ REG_EXPAND_SZ ;
 int RegQueryValueExW (int ,int ,int ,scalar_t__*,int ,scalar_t__*) ;
 int TRUE ;
 scalar_t__ _countof (int *) ;
 int atoiW (int *) ;
 int lstrcpynW (int *,int *,scalar_t__) ;

__attribute__((used)) static BOOL HCR_RegGetIconW(HKEY hkey, LPWSTR szDest, LPCWSTR szName, DWORD len, int* picon_idx)
{
    DWORD dwType;
    WCHAR sTemp[MAX_PATH];
    WCHAR sNum[7];

    if (!RegQueryValueExW(hkey, szName, 0, &dwType, (LPBYTE)szDest, &len))
    {
      if (dwType == REG_EXPAND_SZ)
      {
        ExpandEnvironmentStringsW(szDest, sTemp, MAX_PATH);
        lstrcpynW(szDest, sTemp, len);
      }
        if (ParseFieldW (szDest, 2, sNum, _countof(sNum)))
             *picon_idx = atoiW(sNum);
          else
             *picon_idx=0;
      ParseFieldW (szDest, 1, szDest, len);
          PathUnquoteSpacesW(szDest);
      return TRUE;
    }
    return FALSE;
}
