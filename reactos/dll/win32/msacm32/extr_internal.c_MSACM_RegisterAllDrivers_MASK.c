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
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (char const*,char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ MSACM_pFirstACMDriverID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 

void FUNC12(void)
{
    static const WCHAR msacm32[] = {'m','s','a','c','m','3','2','.','d','l','l','\0'};
    static const WCHAR msacmW[] = {'M','S','A','C','M','.'};
    static const WCHAR drv32[] = {'d','r','i','v','e','r','s','3','2','\0'};
    static const WCHAR sys[] = {'s','y','s','t','e','m','.','i','n','i','\0'};
    static const WCHAR drvkey[] = {'S','o','f','t','w','a','r','e','\\',
				   'M','i','c','r','o','s','o','f','t','\\',
				   'W','i','n','d','o','w','s',' ','N','T','\\',
				   'C','u','r','r','e','n','t','V','e','r','s','i','o','n','\\',
				   'D','r','i','v','e','r','s','3','2','\0'};
    DWORD i, cnt, bufLen, lRet, type;
    WCHAR buf[2048], valname[64], *name, *s;
    FILETIME lastWrite;
    HKEY hKey;

    /* FIXME: What if the user edits system.ini while the program is running?
     * Does Windows handle that?  */
    if (MSACM_pFirstACMDriverID) return;

    lRet = FUNC7(HKEY_LOCAL_MACHINE, drvkey, 0, KEY_QUERY_VALUE, &hKey);
    if (lRet == ERROR_SUCCESS) {
	FUNC8( hKey, 0, 0, 0, &cnt, 0, 0, 0, 0, 0, 0, 0);
	for (i = 0; i < cnt; i++) {
	    bufLen = FUNC0(buf);
	    lRet = FUNC5(hKey, i, buf, &bufLen, 0, 0, 0, &lastWrite);
	    if (lRet != ERROR_SUCCESS) continue;
	    if (FUNC9(buf, msacmW, FUNC0(msacmW))) continue;
	    if (!(name = FUNC11(buf, '='))) continue;
	    *name = 0;
	    FUNC2(buf, name + 1, 0);
	}
	i = 0;
	cnt = FUNC0(valname);
	bufLen = sizeof(buf);
	while(FUNC6(hKey, i, valname, &cnt, 0,
		    &type, (BYTE*)buf, &bufLen) == ERROR_SUCCESS){
	    if (!FUNC9(valname, msacmW, FUNC0(msacmW)))
		FUNC2(valname, buf, 0);
	    ++i;
	}
    	FUNC4( hKey );
    }

    if (FUNC1(drv32, buf, FUNC0(buf), sys))
    {
	for(s = buf; *s;  s += FUNC10(s) + 1)
	{
	    if (FUNC9(s, msacmW, FUNC0(msacmW))) continue;
	    if (!(name = FUNC11(s, '='))) continue;
	    *name = 0;
	    FUNC2(s, name + 1, 0);
	    *name = '=';
	}
    }
    FUNC3();
    FUNC2(msacm32, msacm32, 0);
}