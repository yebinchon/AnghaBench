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
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 char* swCommand ; 
 char* swOpen ; 
 int /*<<< orphan*/  swShell ; 

BOOL FUNC9( HKEY hkeyClass, LPCWSTR szVerb, LPWSTR szDest, DWORD len )
{
        WCHAR sTemp[MAX_PATH];
        LONG size;
        HKEY hkey;

	FUNC4("%p %s %p\n", hkeyClass, FUNC5(szVerb), szDest);

        if (szVerb && *szVerb)
        {
            FUNC8(szDest, szVerb, len);
            return TRUE;
        }

        size=len;
        *szDest='\0';
        if (!FUNC3(hkeyClass, swShell, szDest, &size) && *szDest)
        {
            /* The MSDN says to first try the default verb */
            FUNC7(sTemp, swShell);
            FUNC6(sTemp, szDest);
            FUNC6(sTemp, swCommand);
            if (!FUNC2(hkeyClass, sTemp, 0, KEY_READ, &hkey))
            {
                FUNC0(hkey);
                FUNC4("default verb=%s\n", FUNC5(szDest));
                return TRUE;
            }
        }

        /* then fallback to 'open' */
        FUNC7(sTemp, swShell);
        FUNC6(sTemp, swOpen);
        FUNC6(sTemp, swCommand);
        if (!FUNC2(hkeyClass, sTemp, 0, KEY_READ, &hkey))
        {
            FUNC0(hkey);
            FUNC8(szDest, swOpen, len);
            FUNC4("default verb=open\n");
            return TRUE;
        }

        /* and then just use the first verb on Windows >= 2000 */
#ifdef __REACTOS__
        if (!RegOpenKeyExW(hkeyClass, L"shell", 0, KEY_READ, &hkey))
        {
            if (!RegEnumKeyW(hkey, 0, szDest, len) && *szDest)
            {
                TRACE("default verb=first verb=%s\n", debugstr_w(szDest));
                RegCloseKey(hkey);
                return TRUE;
            }
            RegCloseKey(hkey);
        }
#else
        if (!FUNC1(hkeyClass, 0, szDest, len) && *szDest)
        {
            FUNC4("default verb=first verb=%s\n", FUNC5(szDest));
            return TRUE;
        }
#endif

        FUNC4("no default verb!\n");
	return FALSE;
}