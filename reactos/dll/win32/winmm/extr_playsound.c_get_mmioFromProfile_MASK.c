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
typedef  int /*<<< orphan*/  str ;
typedef  char WCHAR ;
typedef  int UINT ;
typedef  char* LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HMMIO ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int MMIO_ALLOCBUF ; 
 int MMIO_DENYWRITE ; 
 int MMIO_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int SND_APPLICATION ; 
 int SND_NODEFAULT ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HMMIO	FUNC10(UINT uFlags, LPCWSTR lpszName)
{
    WCHAR	str[128];
    LPWSTR	ptr;
    HMMIO  	hmmio;
    HKEY        hRegSnd, hRegApp, hScheme, hSnd;
    DWORD       err, type, count;

    static const WCHAR  wszSounds[] = {'S','o','u','n','d','s',0};
    static const WCHAR  wszDefault[] = {'D','e','f','a','u','l','t',0};
    static const WCHAR  wszKey[] = {'A','p','p','E','v','e','n','t','s','\\',
                                    'S','c','h','e','m','e','s','\\',
                                    'A','p','p','s',0};
    static const WCHAR  wszDotDefault[] = {'.','D','e','f','a','u','l','t',0};
    static const WCHAR  wszDotCurrent[] = {'.','C','u','r','r','e','n','t',0};
    static const WCHAR  wszNull[] = {0};

    FUNC5("searching in SystemSound list for %s\n", FUNC7(lpszName));
    FUNC1(wszSounds, lpszName, wszNull, str, sizeof(str)/sizeof(str[0]));
    if (FUNC8(str) == 0)
    {
	if (uFlags & SND_NODEFAULT) goto next;
	FUNC1(wszSounds, wszDefault, wszNull, str, sizeof(str)/sizeof(str[0]));
	if (FUNC8(str) == 0) goto next;
    }
    for (ptr = str; *ptr && *ptr != ','; ptr++);
    if (*ptr) *ptr = 0;
    hmmio = FUNC9(str, NULL, MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);
    if (hmmio != 0) return hmmio;
 next:
    /* we look up the registry under
     *      HKCU\AppEvents\Schemes\Apps\.Default
     *      HKCU\AppEvents\Schemes\Apps\<AppName>
     */
    if (FUNC3(HKEY_CURRENT_USER, wszKey, &hRegSnd) != 0) goto none;
    if (uFlags & SND_APPLICATION)
    {
        DWORD len;

        err = 1; /* error */
        len = FUNC0(0, str, sizeof(str)/sizeof(str[0]));
        if (len > 0 && len < sizeof(str)/sizeof(str[0]))
        {
            for (ptr = str + FUNC8(str) - 1; ptr >= str; ptr--)
            {
                if (*ptr == '.') *ptr = 0;
                if (*ptr == '\\')
                {
                    err = FUNC3(hRegSnd, ptr+1, &hRegApp);
                    break;
                }
            }
        }
    }
    else
    {
        err = FUNC3(hRegSnd, wszDotDefault, &hRegApp);
    }
    FUNC2(hRegSnd);
    if (err != 0) goto none;
    err = FUNC3(hRegApp, lpszName, &hScheme);
    FUNC2(hRegApp);
    if (err != 0) goto none;
    /* what's the difference between .Current and .Default ? */
    err = FUNC3(hScheme, wszDotDefault, &hSnd);
    if (err != 0)
    {
        err = FUNC3(hScheme, wszDotCurrent, &hSnd);
        FUNC2(hScheme);
        if (err != 0)
            goto none;
    }
    count = sizeof(str);
    err = FUNC4(hSnd, NULL, 0, &type, (LPBYTE)str, &count);
    FUNC2(hSnd);
    if (err != 0 || !*str) goto none;
    hmmio = FUNC9(str, NULL, MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);
    if (hmmio) return hmmio;
 none:
    FUNC6("can't find SystemSound=%s !\n", FUNC7(lpszName));
    return 0;
}