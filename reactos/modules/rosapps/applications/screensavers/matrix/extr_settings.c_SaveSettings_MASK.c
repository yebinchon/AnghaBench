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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_MULTI_SZ ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ g_fFontBold ; 
 scalar_t__ g_fRandomizeMessages ; 
 scalar_t__ g_nDensity ; 
 scalar_t__ g_nFontSize ; 
 scalar_t__ g_nMatrixSpeed ; 
 scalar_t__ g_nMessageSpeed ; 
 int g_nNumMessages ; 
 scalar_t__ g_szFontName ; 
 scalar_t__* g_szMessages ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

void FUNC9()
{
	HKEY hkey;
	TCHAR *hugechar = FUNC8(4096 * sizeof(TCHAR));
	TCHAR *msgptr = hugechar;
	int totallen = 0;
	int i,len;
	LONG value;

	if(hugechar == 0)
		return;

	FUNC3(hugechar, 4096 * sizeof(TCHAR));
	msgptr = hugechar;

	FUNC1(HKEY_CURRENT_USER, FUNC4("Software\\Catch22\\Matrix Screen Saver"), 0,
		FUNC4(""), 0, KEY_WRITE, NULL, &hkey, NULL);

	value = g_nMessageSpeed;
	FUNC2(hkey, FUNC4("MessageSpeed"), 0, REG_DWORD, (BYTE *)&value, sizeof value);

	value = g_nMatrixSpeed;
	FUNC2(hkey, FUNC4("MatrixSpeed"), 0, REG_DWORD, (BYTE *)&value, sizeof value);

	value = g_nDensity;
	FUNC2(hkey, FUNC4("Density"), 0, REG_DWORD, (BYTE *)&value, sizeof value);

	value = g_nFontSize;
	FUNC2(hkey, FUNC4("FontSize"), 0, REG_DWORD, (BYTE *)&value, sizeof value);

	value = g_fRandomizeMessages;
	FUNC2(hkey, FUNC4("Randomize"), 0, REG_DWORD, (BYTE *)&value, sizeof value);

	value = g_fFontBold;
	FUNC2(hkey, FUNC4("FontBold"), 0, REG_DWORD, (BYTE *)&value, sizeof value);

	FUNC2(hkey, FUNC4("FontName"), 0, REG_SZ, (BYTE *)g_szFontName, FUNC7(g_szFontName) * sizeof(TCHAR));

	for(i = 0; i < g_nNumMessages; i++)
	{
		len = FUNC7(g_szMessages[i]);

		if(len > 0 && totallen+len < 4096)
		{
			FUNC6(msgptr, g_szMessages[i], 4096-totallen);
			totallen += len + 1;
			msgptr += len + 1;
		}
	}

	//*msgptr = _T('\0');
	totallen++;

	FUNC2(hkey, FUNC4("Messages"), 0, REG_MULTI_SZ, (BYTE *)hugechar, totallen * sizeof(TCHAR));
	FUNC0(hkey);

	FUNC5(hugechar);
}