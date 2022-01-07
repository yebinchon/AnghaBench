
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int value ;
struct BackupSysParam {scalar_t__ spiGet; int keyName; } ;
typedef int ncm ;
typedef int iconTitleFont ;
struct TYPE_6__ {int cbSize; } ;
typedef TYPE_1__ NONCLIENTMETRICSW ;
typedef int LPBYTE ;
typedef TYPE_1__ LOGFONTW ;
typedef int HKEY ;
typedef TYPE_1__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_ALL_ACCESS ;
 int REG_BINARY ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 scalar_t__ SPI_GETICONTITLELOGFONT ;
 scalar_t__ SPI_GETNONCLIENTMETRICS ;
 int SystemParametersInfoW (scalar_t__,int,TYPE_1__*,int ) ;
 struct BackupSysParam* backupSysParams ;
 int keyIconTitleFont ;
 int keyNonClientMetrics ;
 int memset (TYPE_1__*,int ,int) ;
 int save_sys_colors (int ) ;
 int szThemeManager ;

__attribute__((used)) static void UXTHEME_BackupSystemMetrics(void)
{
    HKEY hKey;
    const struct BackupSysParam* bsp = backupSysParams;

    if (RegCreateKeyExW( HKEY_CURRENT_USER, szThemeManager,
                         0, 0, 0, KEY_ALL_ACCESS,
                         0, &hKey, 0) == ERROR_SUCCESS)
    {
        NONCLIENTMETRICSW ncm;
        LOGFONTW iconTitleFont;


        save_sys_colors (hKey);


        while (bsp->spiGet >= 0)
        {
            DWORD value;

            SystemParametersInfoW (bsp->spiGet, 0, &value, 0);
            RegSetValueExW (hKey, bsp->keyName, 0, REG_DWORD,
                (LPBYTE)&value, sizeof (value));

            bsp++;
        }


        memset (&ncm, 0, sizeof (ncm));
        ncm.cbSize = sizeof (ncm);
        SystemParametersInfoW (SPI_GETNONCLIENTMETRICS, sizeof (ncm), &ncm, 0);
        RegSetValueExW (hKey, keyNonClientMetrics, 0, REG_BINARY, (LPBYTE)&ncm,
            sizeof (ncm));
 memset (&iconTitleFont, 0, sizeof (iconTitleFont));
 SystemParametersInfoW (SPI_GETICONTITLELOGFONT, sizeof (iconTitleFont),
     &iconTitleFont, 0);
 RegSetValueExW (hKey, keyIconTitleFont, 0, REG_BINARY,
     (LPBYTE)&iconTitleFont, sizeof (iconTitleFont));

        RegCloseKey (hKey);
    }
}
