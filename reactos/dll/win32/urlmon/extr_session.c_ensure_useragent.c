
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
typedef char WCHAR ;
struct TYPE_3__ {int member_0; scalar_t__ dwPlatformId; int dwMinorVersion; int dwMajorVersion; } ;
typedef TYPE_1__ OSVERSIONINFOW ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ARRAY_SIZE (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetCurrentProcess () ;
 int GetVersionExW (TYPE_1__*) ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ IsWow64Process (int ,scalar_t__*) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,char*,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyW (int ,char const*,int *) ;
 int TRACE (char*,int ) ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int debugstr_w (char*) ;
 char* heap_alloc (size_t) ;
 char* heap_realloc (char*,size_t) ;
 int memcpy (char*,char*,scalar_t__) ;
 int sprintfW (char*,char const*,char const*,int ,int ,char const*) ;
 size_t strlenW (char*) ;
 char* user_agent ;

__attribute__((used)) static void ensure_useragent(void)
{
    OSVERSIONINFOW info = {sizeof(info)};
    const WCHAR *os_type, *is_nt;
    WCHAR buf[512], *ret, *tmp;
    DWORD res, idx=0;
    size_t len, size;
    BOOL is_wow;
    HKEY key;

    static const WCHAR formatW[] =
        {'M','o','z','i','l','l','a','/','4','.','0',
         ' ','(','c','o','m','p','a','t','i','b','l','e',';',
         ' ','M','S','I','E',' ','8','.','0',';',
         ' ','W','i','n','d','o','w','s',' ','%','s','%','d','.','%','d',';',
         ' ','%','s','T','r','i','d','e','n','t','/','5','.','0',0};
    static const WCHAR post_platform_keyW[] =
        {'S','O','F','T','W','A','R','E',
         '\\','M','i','c','r','o','s','o','f','t',
         '\\','W','i','n','d','o','w','s',
         '\\','C','u','r','r','e','n','t','V','e','r','s','i','o','n',
         '\\','I','n','t','e','r','n','e','t',' ','S','e','t','t','i','n','g','s',
         '\\','5','.','0','\\','U','s','e','r',' ','A','g','e','n','t',
         '\\','P','o','s','t',' ','P','l','a','t','f','o','r','m',0};
    static const WCHAR ntW[] = {'N','T',' ',0};
    static const WCHAR win64W[] = {'W','i','n','6','4',';',' ','x','6','4',';',' ',0};
    static const WCHAR wow64W[] = {'W','O','W','6','4',';',' ',0};
    static const WCHAR emptyW[] = {0};

    if(user_agent)
        return;

    GetVersionExW(&info);
    is_nt = info.dwPlatformId == VER_PLATFORM_WIN32_NT ? ntW : emptyW;

    if(sizeof(void*) == 8)
        os_type = win64W;
    else if(IsWow64Process(GetCurrentProcess(), &is_wow) && is_wow)
        os_type = wow64W;
    else
        os_type = emptyW;

    sprintfW(buf, formatW, is_nt, info.dwMajorVersion, info.dwMinorVersion, os_type);
    len = strlenW(buf);

    size = len+40;
    ret = heap_alloc(size * sizeof(WCHAR));
    if(!ret)
        return;

    memcpy(ret, buf, len*sizeof(WCHAR));

    res = RegOpenKeyW(HKEY_LOCAL_MACHINE, post_platform_keyW, &key);
    if(res == ERROR_SUCCESS) {
        DWORD value_len;

        while(1) {
            value_len = ARRAY_SIZE(buf);
            res = RegEnumValueW(key, idx, buf, &value_len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            if(res != ERROR_SUCCESS)
                break;
            idx++;

            if(len + value_len + 2 + 1 >= size) {
                tmp = heap_realloc(ret, (size*2+value_len)*sizeof(WCHAR));
                if(!tmp)
                    break;
                ret = tmp;
                size = size*2+value_len;
            }

            ret[len++] = ';';
            ret[len++] = ' ';
            memcpy(ret+len, buf, value_len*sizeof(WCHAR));
            len += value_len;
        }

        RegCloseKey(key);
    }

    ret[len++] = ')';
    ret[len++] = 0;

    user_agent = ret;
    TRACE("Using user agent %s\n", debugstr_w(user_agent));
}
