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
typedef  int ULONG ;
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ DENSITY_MAX ; 
 scalar_t__ DENSITY_MIN ; 
 scalar_t__ ERROR_SUCCESS ; 
 void* FALSE ; 
 scalar_t__ FONT_MAX ; 
 scalar_t__ FONT_MIN ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  MAXMSG_LENGTH ; 
 scalar_t__ MSGSPEED_MAX ; 
 scalar_t__ MSGSPEED_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ SPEED_MAX ; 
 scalar_t__ SPEED_MIN ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 scalar_t__* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 void* g_fFontBold ; 
 void* g_fRandomizeMessages ; 
 scalar_t__ g_nDensity ; 
 scalar_t__ g_nFontSize ; 
 scalar_t__ g_nMatrixSpeed ; 
 scalar_t__ g_nMessageSpeed ; 
 size_t g_nNumMessages ; 
 scalar_t__ g_szFontName ; 
 int /*<<< orphan*/ * g_szMessages ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__*) ; 
 scalar_t__* FUNC10 (int) ; 

void FUNC11()
{
	HKEY hkey;
	LONG value;
	ULONG len;
	TCHAR *hugechar = FUNC10(4096);
	TCHAR *hptr = hugechar;

	if(hugechar == 0)
		return;

	FUNC3(hugechar, 4096);

	FUNC1(HKEY_CURRENT_USER, FUNC4("Software\\Catch22\\Matrix Screen Saver"), 0,
		FUNC4(""), 0, KEY_READ, NULL, &hkey, NULL);

	len = sizeof value;
	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("MessageSpeed"), 0, 0, (BYTE *)&value, &len))
	{
		if(value >= MSGSPEED_MIN && value <= MSGSPEED_MAX)
			g_nMessageSpeed = value;
	}

	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("MatrixSpeed"),  0, 0, (BYTE *)&value, &len))
	{
		if(value >= SPEED_MIN && value <= SPEED_MAX)
			g_nMatrixSpeed  = value;
	}

	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("Density"),      0, 0, (BYTE *)&value, &len))
	{
		if(value >= DENSITY_MIN && value <= DENSITY_MAX)
			g_nDensity      = value;
	}

	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("FontSize"),      0, 0, (BYTE *)&value, &len))
	{
		if(value >= FONT_MIN && value <= FONT_MAX)
			g_nFontSize	 = value;
	}

	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("FontBold"),      0, 0, (BYTE *)&value, &len))
		g_fFontBold = (value == 0 ? FALSE : TRUE);

	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("Randomize"),      0, 0, (BYTE *)&value, &len))
		g_fRandomizeMessages = (value == 0 ? FALSE : TRUE);

	len = 512;
	if(FUNC2(hkey, FUNC4("FontName"),  0, 0, (BYTE *)g_szFontName, &len) != ERROR_SUCCESS)
		FUNC7(g_szFontName, FUNC4("Arial"));

	len = 4096;

	if(ERROR_SUCCESS == FUNC2(hkey, FUNC4("Messages"),      0, 0 , (BYTE *)hugechar, &len))
	{
		while(len > 0 && *hptr && FUNC5(*hptr))
		{
			if(FUNC9(hptr) > 0)
			{
				FUNC8(g_szMessages[g_nNumMessages], hptr, MAXMSG_LENGTH);
				++g_nNumMessages;
				hptr += FUNC9(hptr) + 1;
			}
		}
	}
	else
	{
		/* built-in coded message for first run */
		FUNC8(g_szMessages[0], FUNC4("ReactOS"), MAXMSG_LENGTH);
		++g_nNumMessages;
	}

	FUNC0(hkey);
	FUNC6(hugechar);
}