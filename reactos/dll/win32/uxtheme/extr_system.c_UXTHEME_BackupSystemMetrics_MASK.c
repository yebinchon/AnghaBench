#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
struct BackupSysParam {scalar_t__ spiGet; int /*<<< orphan*/  keyName; } ;
typedef  int /*<<< orphan*/  ncm ;
typedef  int /*<<< orphan*/  iconTitleFont ;
struct TYPE_6__ {int cbSize; } ;
typedef  TYPE_1__ NONCLIENTMETRICSW ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_1__ LOGFONTW ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_1__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SPI_GETICONTITLELOGFONT ; 
 scalar_t__ SPI_GETNONCLIENTMETRICS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct BackupSysParam* backupSysParams ; 
 int /*<<< orphan*/  keyIconTitleFont ; 
 int /*<<< orphan*/  keyNonClientMetrics ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szThemeManager ; 

__attribute__((used)) static void FUNC6(void)
{
    HKEY hKey;
    const struct BackupSysParam* bsp = backupSysParams;

    if (FUNC1( HKEY_CURRENT_USER, szThemeManager,
                         0, 0, 0, KEY_ALL_ACCESS,
                         0, &hKey, 0) == ERROR_SUCCESS)
    {
        NONCLIENTMETRICSW ncm;
        LOGFONTW iconTitleFont;
        
        /* back up colors */
        FUNC5 (hKey);
    
        /* back up "other" settings */
        while (bsp->spiGet >= 0)
        {
            DWORD value;
            
            FUNC3 (bsp->spiGet, 0, &value, 0);
            FUNC2 (hKey, bsp->keyName, 0, REG_DWORD, 
                (LPBYTE)&value, sizeof (value));
        
            bsp++;
        }
        
	/* back up non-client metrics */
        FUNC4 (&ncm, 0, sizeof (ncm));
        ncm.cbSize = sizeof (ncm);
        FUNC3 (SPI_GETNONCLIENTMETRICS, sizeof (ncm), &ncm, 0);
        FUNC2 (hKey, keyNonClientMetrics, 0, REG_BINARY, (LPBYTE)&ncm,
            sizeof (ncm));
	FUNC4 (&iconTitleFont, 0, sizeof (iconTitleFont));
	FUNC3 (SPI_GETICONTITLELOGFONT, sizeof (iconTitleFont),
	    &iconTitleFont, 0);
	FUNC2 (hKey, keyIconTitleFont, 0, REG_BINARY, 
	    (LPBYTE)&iconTitleFont, sizeof (iconTitleFont));
    
        FUNC0 (hKey);
    }
}