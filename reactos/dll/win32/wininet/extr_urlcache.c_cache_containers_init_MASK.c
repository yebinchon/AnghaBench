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
typedef  int /*<<< orphan*/  DefaultContainerData ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
#define  COOKIE_CACHE_ENTRY 133 
 int /*<<< orphan*/  CP_ACP ; 
#define  CSIDL_COOKIES 132 
#define  CSIDL_HISTORY 131 
#define  CSIDL_INTERNET_CACHE 130 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_ENVVAR_NOT_FOUND ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,char*,int) ; 
 int MAX_PATH ; 
#define  NORMAL_CACHE_ENTRY 129 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  URLHISTORY_CACHE_ENTRY 128 
 int /*<<< orphan*/  WC_NO_BEST_FIT_CHARS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  bDefaultContainersAdded ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const WCHAR UrlSuffix[] = {'C','o','n','t','e','n','t','.','I','E','5',0};
    static const WCHAR HistorySuffix[] = {'H','i','s','t','o','r','y','.','I','E','5',0};
    static const WCHAR CookieSuffix[] = {0};
    /* ReactOS r50916 */
    static const WCHAR UserProfile[] = {'U','S','E','R','P','R','O','F','I','L','E',0};
    static const struct
    {
        int nFolder; /* CSIDL_* constant */
        const WCHAR *shpath_suffix; /* suffix on path returned by SHGetSpecialFolderPath */
        const char *cache_prefix; /* prefix used to reference the container */
        DWORD default_entry_type;
    } DefaultContainerData[] = 
    {
        { CSIDL_INTERNET_CACHE, UrlSuffix, "", NORMAL_CACHE_ENTRY },
        { CSIDL_HISTORY, HistorySuffix, "Visited:", URLHISTORY_CACHE_ENTRY },
        { CSIDL_COOKIES, CookieSuffix, "Cookie:", COOKIE_CACHE_ENTRY },
    };
    DWORD i;

    /* ReactOS r50916 */
    if (FUNC1(UserProfile, NULL, 0) == 0 && FUNC2() == ERROR_ENVVAR_NOT_FOUND)
    {
        FUNC0("Environment variable 'USERPROFILE' does not exist!\n");
        return;
    }

    for (i = 0; i < sizeof(DefaultContainerData) / sizeof(DefaultContainerData[0]); i++)
    {
        WCHAR wszCachePath[MAX_PATH];
        WCHAR wszMutexName[MAX_PATH];
        int path_len, suffix_len;
        BOOL def_char;

        if (!FUNC4(NULL, wszCachePath, DefaultContainerData[i].nFolder, TRUE))
        {
            FUNC0("Couldn't get path for default container %u\n", i);
            continue;
        }
        path_len = FUNC9(wszCachePath);
        suffix_len = FUNC9(DefaultContainerData[i].shpath_suffix);

        if (path_len + suffix_len + 2 > MAX_PATH)
        {
            FUNC0("Path too long\n");
            continue;
        }

        wszCachePath[path_len] = '\\';
        wszCachePath[path_len+1] = 0;

        FUNC8(wszMutexName, wszCachePath);
        
        if (suffix_len)
        {
            FUNC7(wszCachePath + path_len + 1, DefaultContainerData[i].shpath_suffix, (suffix_len + 1) * sizeof(WCHAR));
            wszCachePath[path_len + suffix_len + 1] = '\\';
            wszCachePath[path_len + suffix_len + 2] = '\0';
        }

        if (!FUNC5(CP_ACP, WC_NO_BEST_FIT_CHARS, wszCachePath, path_len,
                    NULL, 0, NULL, &def_char) || def_char)
        {
            WCHAR tmp[MAX_PATH];

            /* cannot convert path to ANSI code page */
            if (!(path_len = FUNC3(wszCachePath, tmp, MAX_PATH)) ||
                !FUNC5(CP_ACP, WC_NO_BEST_FIT_CHARS, tmp, path_len,
                    NULL, 0, NULL, &def_char) || def_char)
                FUNC0("Can't create container path accessible by ANSI functions\n");
            else
                FUNC7(wszCachePath, tmp, (path_len+1)*sizeof(WCHAR));
        }

        FUNC6(DefaultContainerData[i].cache_prefix, wszCachePath,
                DefaultContainerData[i].default_entry_type, wszMutexName);
    }

#ifdef __REACTOS__
    bDefaultContainersAdded = TRUE;
#endif
}