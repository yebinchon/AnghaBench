
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DefaultContainerData ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;



 int CP_ACP ;



 int ERR (char*,...) ;
 scalar_t__ ERROR_ENVVAR_NOT_FOUND ;
 scalar_t__ GetEnvironmentVariableW (char const*,int *,int ) ;
 scalar_t__ GetLastError () ;
 int GetShortPathNameW (char*,char*,int) ;
 int MAX_PATH ;

 int SHGetSpecialFolderPathW (int *,char*,int,int ) ;
 int TRUE ;

 int WC_NO_BEST_FIT_CHARS ;
 int WideCharToMultiByte (int ,int ,char*,int,int *,int ,int *,scalar_t__*) ;
 int bDefaultContainersAdded ;
 int cache_containers_add (char const*,char*,int,char*) ;
 int memcpy (char*,char*,int) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static void cache_containers_init(void)
{
    static const WCHAR UrlSuffix[] = {'C','o','n','t','e','n','t','.','I','E','5',0};
    static const WCHAR HistorySuffix[] = {'H','i','s','t','o','r','y','.','I','E','5',0};
    static const WCHAR CookieSuffix[] = {0};

    static const WCHAR UserProfile[] = {'U','S','E','R','P','R','O','F','I','L','E',0};
    static const struct
    {
        int nFolder;
        const WCHAR *shpath_suffix;
        const char *cache_prefix;
        DWORD default_entry_type;
    } DefaultContainerData[] =
    {
        { 130, UrlSuffix, "", 129 },
        { 131, HistorySuffix, "Visited:", 128 },
        { 132, CookieSuffix, "Cookie:", 133 },
    };
    DWORD i;


    if (GetEnvironmentVariableW(UserProfile, ((void*)0), 0) == 0 && GetLastError() == ERROR_ENVVAR_NOT_FOUND)
    {
        ERR("Environment variable 'USERPROFILE' does not exist!\n");
        return;
    }

    for (i = 0; i < sizeof(DefaultContainerData) / sizeof(DefaultContainerData[0]); i++)
    {
        WCHAR wszCachePath[MAX_PATH];
        WCHAR wszMutexName[MAX_PATH];
        int path_len, suffix_len;
        BOOL def_char;

        if (!SHGetSpecialFolderPathW(((void*)0), wszCachePath, DefaultContainerData[i].nFolder, TRUE))
        {
            ERR("Couldn't get path for default container %u\n", i);
            continue;
        }
        path_len = strlenW(wszCachePath);
        suffix_len = strlenW(DefaultContainerData[i].shpath_suffix);

        if (path_len + suffix_len + 2 > MAX_PATH)
        {
            ERR("Path too long\n");
            continue;
        }

        wszCachePath[path_len] = '\\';
        wszCachePath[path_len+1] = 0;

        strcpyW(wszMutexName, wszCachePath);

        if (suffix_len)
        {
            memcpy(wszCachePath + path_len + 1, DefaultContainerData[i].shpath_suffix, (suffix_len + 1) * sizeof(WCHAR));
            wszCachePath[path_len + suffix_len + 1] = '\\';
            wszCachePath[path_len + suffix_len + 2] = '\0';
        }

        if (!WideCharToMultiByte(CP_ACP, WC_NO_BEST_FIT_CHARS, wszCachePath, path_len,
                    ((void*)0), 0, ((void*)0), &def_char) || def_char)
        {
            WCHAR tmp[MAX_PATH];


            if (!(path_len = GetShortPathNameW(wszCachePath, tmp, MAX_PATH)) ||
                !WideCharToMultiByte(CP_ACP, WC_NO_BEST_FIT_CHARS, tmp, path_len,
                    ((void*)0), 0, ((void*)0), &def_char) || def_char)
                ERR("Can't create container path accessible by ANSI functions\n");
            else
                memcpy(wszCachePath, tmp, (path_len+1)*sizeof(WCHAR));
        }

        cache_containers_add(DefaultContainerData[i].cache_prefix, wszCachePath,
                DefaultContainerData[i].default_entry_type, wszMutexName);
    }




}
