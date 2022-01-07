
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef int COLORREF ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int GetBValue (int ) ;
 int GetGValue (int ) ;
 int GetRValue (int ) ;
 int GetSysColor (int) ;
 int KEY_ALL_ACCESS ;
 int NUM_SYS_COLORS ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int RegSetValueExA (int ,int ,int ,int ,int *,scalar_t__) ;
 int * SysColorsNames ;
 int sprintf (char*,char*,int,int,int) ;
 int strColorKey ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void save_sys_colors (HKEY baseKey)
{
    char colorStr[13];
    HKEY hKey;
    int i;

    if (RegCreateKeyExW( baseKey, strColorKey,
                         0, 0, 0, KEY_ALL_ACCESS,
                         0, &hKey, 0 ) == ERROR_SUCCESS)
    {
        for (i = 0; i < NUM_SYS_COLORS; i++)
        {
            COLORREF col = GetSysColor (i);

            sprintf (colorStr, "%d %d %d",
                GetRValue (col), GetGValue (col), GetBValue (col));

            RegSetValueExA (hKey, SysColorsNames[i], 0, REG_SZ,
                (BYTE*)colorStr, strlen (colorStr)+1);
        }
        RegCloseKey (hKey);
    }
}
