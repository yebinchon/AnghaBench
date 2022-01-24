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
typedef  int /*<<< orphan*/  path ;
typedef  float WCHAR ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  float* LPWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,int) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  KEY_CREATE_SUB_KEY ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float*) ; 
 float* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (float*,float const*) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*) ; 
 int FUNC11 (float const*) ; 
 float const* szBackSlash ; 

__attribute__((used)) static LPWSTR FUNC12(MSIPACKAGE *package)
{
    static const WCHAR fusion[] =
        {'f','u','s','i','o','n','.','d','l','l',0};
    static const WCHAR subkey[] =
        {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
         'N','E','T',' ','F','r','a','m','e','w','o','r','k',' ','S','e','t','u','p','\\','N','D','P',0};
    static const WCHAR subdir[] =
        {'M','i','c','r','o','s','o','f','t','.','N','E','T','\\','F','r','a','m','e','w','o','r','k','\\',0};
    static const WCHAR v2050727[] =
        {'v','2','.','0','.','5','0','7','2','7',0};
    static const WCHAR v4client[] =
        {'v','4','\\','C','l','i','e','n','t',0};
    static const WCHAR installpath[] =
        {'I','n','s','t','a','l','l','P','a','t','h',0};
    HKEY netsetup, hkey;
    LONG res;
    DWORD size, len, type;
    WCHAR windir[MAX_PATH], path[MAX_PATH], *filename = NULL;

    res = FUNC4(HKEY_LOCAL_MACHINE, subkey, 0, KEY_CREATE_SUB_KEY, &netsetup);
    if (res != ERROR_SUCCESS)
        return NULL;

    if (!FUNC3(netsetup, v4client, 0, NULL, 0, KEY_QUERY_VALUE, NULL, &hkey, NULL))
    {
        size = sizeof(path)/sizeof(path[0]);
        if (!FUNC5(hkey, installpath, NULL, &type, (BYTE *)path, &size))
        {
            len = FUNC11(path) + FUNC11(fusion) + 2;
            if (!(filename = FUNC8(len * sizeof(WCHAR)))) return NULL;

            FUNC10(filename, path);
            FUNC9(filename, szBackSlash);
            FUNC9(filename, fusion);
            if (FUNC0(filename) != INVALID_FILE_ATTRIBUTES)
            {
                FUNC6( "found %s\n", FUNC7(filename) );
                FUNC2(hkey);
                FUNC2(netsetup);
                return filename;
            }
        }
        FUNC2(hkey);
    }

    if (!FUNC3(netsetup, v2050727, 0, NULL, 0, KEY_QUERY_VALUE, NULL, &hkey, NULL))
    {
        FUNC2(hkey);
        FUNC1(windir, MAX_PATH);
        len = FUNC11(windir) + FUNC11(subdir) + FUNC11(v2050727) + FUNC11(fusion) + 3;
        if (!(filename = FUNC8(len * sizeof(WCHAR)))) return NULL;

        FUNC10(filename, windir);
        FUNC9(filename, szBackSlash);
        FUNC9(filename, subdir);
        FUNC9(filename, v2050727);
        FUNC9(filename, szBackSlash);
        FUNC9(filename, fusion);
        if (FUNC0(filename) != INVALID_FILE_ATTRIBUTES)
        {
            FUNC6( "found %s\n", FUNC7(filename) );
            FUNC2(netsetup);
            return filename;
        }
    }

    FUNC2(netsetup);
    return filename;
}