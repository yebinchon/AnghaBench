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
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int NUM_SYS_COLORS ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * SysColorsNames ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  strColorKey ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9 (HKEY baseKey)
{
    char colorStr[13];
    HKEY hKey;
    int i;

    if (FUNC5( baseKey, strColorKey,
                         0, 0, 0, KEY_ALL_ACCESS,
                         0, &hKey, 0 ) == ERROR_SUCCESS)
    {
        for (i = 0; i < NUM_SYS_COLORS; i++)
        {
            COLORREF col = FUNC3 (i);
        
            FUNC7 (colorStr, "%d %d %d", 
                FUNC2 (col), FUNC1 (col), FUNC0 (col));

            FUNC6 (hKey, SysColorsNames[i], 0, REG_SZ, 
                (BYTE*)colorStr, FUNC8 (colorStr)+1);
        }
        FUNC4 (hKey);
    }
}