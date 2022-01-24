#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
struct BackupSysParam {scalar_t__ spiGet; int /*<<< orphan*/  spiSet; int /*<<< orphan*/  keyName; } ;
typedef  int /*<<< orphan*/  ncm ;
typedef  int /*<<< orphan*/  iconTitleFont ;
typedef  int /*<<< orphan*/  colorStr ;
typedef  int /*<<< orphan*/  NONCLIENTMETRICSW ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int NUM_SYS_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_SETICONTITLELOGFONT ; 
 int /*<<< orphan*/  SPI_SETNONCLIENTMETRICS ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SysColorsNames ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 struct BackupSysParam* backupSysParams ; 
 int /*<<< orphan*/  keyIconTitleFont ; 
 int /*<<< orphan*/  keyNonClientMetrics ; 
 int FUNC8 (char*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  strColorKey ; 
 int /*<<< orphan*/  szThemeManager ; 

__attribute__((used)) static void FUNC9(void)
{
    HKEY hKey;
    const struct BackupSysParam* bsp = backupSysParams;

    if (FUNC2 (HKEY_CURRENT_USER, szThemeManager,
                       0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS) 
    {
        HKEY colorKey;
    
        /* read backed-up colors */
        if (FUNC2 (hKey, strColorKey,
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
            
                if (FUNC3 (colorKey, SysColorsNames[i], 0,
                    &type, (LPBYTE) colorStr, &count) == ERROR_SUCCESS)
                {
                    int r, g, b;
                    if (FUNC8 (colorStr, "%d %d %d", &r, &g, &b) == 3)
                    {
                        sysColsIndices[sysColCount] = i;
                        sysCols[sysColCount] = FUNC0(r, g, b);
                        sysColCount++;
                    }
                }
            }
            FUNC1 (colorKey);
          
            FUNC5 (sysColCount, sysColsIndices, sysCols);
        }
    
        /* read backed-up other settings */
        while (bsp->spiGet >= 0)
        {
            DWORD value;
            DWORD count = sizeof(value);
            DWORD type;
            
            if (FUNC4 (hKey, bsp->keyName, 0,
                &type, (LPBYTE)&value, &count) == ERROR_SUCCESS)
            {
                FUNC6 (bsp->spiSet, 0, FUNC7(value), SPIF_UPDATEINIFILE);
            }
        
            bsp++;
        }
    
        /* read backed-up non-client metrics */
        {
            NONCLIENTMETRICSW ncm;
            LOGFONTW iconTitleFont;
            DWORD count = sizeof(ncm);
            DWORD type;
            
	    if (FUNC4 (hKey, keyNonClientMetrics, 0,
		&type, (LPBYTE)&ncm, &count) == ERROR_SUCCESS)
	    {
		FUNC6 (SPI_SETNONCLIENTMETRICS, 
                    count, &ncm, SPIF_UPDATEINIFILE);
	    }
	    
            count = sizeof(iconTitleFont);
            
	    if (FUNC4 (hKey, keyIconTitleFont, 0,
		&type, (LPBYTE)&iconTitleFont, &count) == ERROR_SUCCESS)
	    {
		FUNC6 (SPI_SETICONTITLELOGFONT, 
                    count, &iconTitleFont, SPIF_UPDATEINIFILE);
	    }
	}
      
        FUNC1 (hKey);
    }
}