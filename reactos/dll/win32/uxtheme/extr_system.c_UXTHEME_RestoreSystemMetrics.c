
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct BackupSysParam {scalar_t__ spiGet; int spiSet; int keyName; } ;
typedef int ncm ;
typedef int iconTitleFont ;
typedef int colorStr ;
typedef int NONCLIENTMETRICSW ;
typedef int LPBYTE ;
typedef int LOGFONTW ;
typedef int HKEY ;
typedef int DWORD ;
typedef int COLORREF ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int NUM_SYS_COLORS ;
 int RGB (int,int,int) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,int ,int ,int*,int ,int*) ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,int*,int ,int*) ;
 int SPIF_UPDATEINIFILE ;
 int SPI_SETICONTITLELOGFONT ;
 int SPI_SETNONCLIENTMETRICS ;
 int SetSysColors (int,int*,int *) ;
 int * SysColorsNames ;
 int SystemParametersInfoW (int ,int,int *,int ) ;
 int * UlongToPtr (int) ;
 struct BackupSysParam* backupSysParams ;
 int keyIconTitleFont ;
 int keyNonClientMetrics ;
 int sscanf (char*,char*,int*,int*,int*) ;
 int strColorKey ;
 int szThemeManager ;

__attribute__((used)) static void UXTHEME_RestoreSystemMetrics(void)
{
    HKEY hKey;
    const struct BackupSysParam* bsp = backupSysParams;

    if (RegOpenKeyExW (HKEY_CURRENT_USER, szThemeManager,
                       0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        HKEY colorKey;


        if (RegOpenKeyExW (hKey, strColorKey,
                           0, KEY_QUERY_VALUE, &colorKey) == ERROR_SUCCESS)
        {
            int i;
            COLORREF sysCols[NUM_SYS_COLORS];
            int sysColsIndices[NUM_SYS_COLORS];
            int sysColCount = 0;

            for (i = 0; i < NUM_SYS_COLORS; i++)
            {
                DWORD type;
                char colorStr[13];
                DWORD count = sizeof(colorStr);

                if (RegQueryValueExA (colorKey, SysColorsNames[i], 0,
                    &type, (LPBYTE) colorStr, &count) == ERROR_SUCCESS)
                {
                    int r, g, b;
                    if (sscanf (colorStr, "%d %d %d", &r, &g, &b) == 3)
                    {
                        sysColsIndices[sysColCount] = i;
                        sysCols[sysColCount] = RGB(r, g, b);
                        sysColCount++;
                    }
                }
            }
            RegCloseKey (colorKey);

            SetSysColors (sysColCount, sysColsIndices, sysCols);
        }


        while (bsp->spiGet >= 0)
        {
            DWORD value;
            DWORD count = sizeof(value);
            DWORD type;

            if (RegQueryValueExW (hKey, bsp->keyName, 0,
                &type, (LPBYTE)&value, &count) == ERROR_SUCCESS)
            {
                SystemParametersInfoW (bsp->spiSet, 0, UlongToPtr(value), SPIF_UPDATEINIFILE);
            }

            bsp++;
        }


        {
            NONCLIENTMETRICSW ncm;
            LOGFONTW iconTitleFont;
            DWORD count = sizeof(ncm);
            DWORD type;

     if (RegQueryValueExW (hKey, keyNonClientMetrics, 0,
  &type, (LPBYTE)&ncm, &count) == ERROR_SUCCESS)
     {
  SystemParametersInfoW (SPI_SETNONCLIENTMETRICS,
                    count, &ncm, SPIF_UPDATEINIFILE);
     }

            count = sizeof(iconTitleFont);

     if (RegQueryValueExW (hKey, keyIconTitleFont, 0,
  &type, (LPBYTE)&iconTitleFont, &count) == ERROR_SUCCESS)
     {
  SystemParametersInfoW (SPI_SETICONTITLELOGFONT,
                    count, &iconTitleFont, SPIF_UPDATEINIFILE);
     }
 }

        RegCloseKey (hKey);
    }
}
