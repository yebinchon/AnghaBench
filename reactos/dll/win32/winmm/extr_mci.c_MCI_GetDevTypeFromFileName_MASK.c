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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  MCIERR_EXTENSION_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,char) ; 

__attribute__((used)) static	DWORD	FUNC6(LPCWSTR fileName, LPWSTR buf, UINT len)
{
    LPCWSTR	tmp;
    HKEY	hKey;
    static const WCHAR keyW[] = {'S','O','F','T','W','A','R','E','\\','M','i','c','r','o','s','o','f','t','\\',
                                 'W','i','n','d','o','w','s',' ','N','T','\\','C','u','r','r','e','n','t','V','e','r','s','i','o','n','\\',
                                 'M','C','I',' ','E','x','t','e','n','s','i','o','n','s',0};
    if ((tmp = FUNC5(fileName, '.'))) {
	if (FUNC1( HKEY_LOCAL_MACHINE, keyW,
			   0, KEY_QUERY_VALUE, &hKey ) == ERROR_SUCCESS) {
	    DWORD dwLen = len;
	    LONG lRet = FUNC2( hKey, tmp + 1, 0, 0, (void*)buf, &dwLen ); 
	    FUNC0( hKey );
	    if (lRet == ERROR_SUCCESS) return 0;
        }
	FUNC3("No ...\\MCI Extensions entry for %s found.\n", FUNC4(tmp));
    }
    return MCIERR_EXTENSION_NOT_FOUND;
}