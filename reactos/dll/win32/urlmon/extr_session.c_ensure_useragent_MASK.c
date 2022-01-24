#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
typedef  char WCHAR ;
struct TYPE_3__ {int member_0; scalar_t__ dwPlatformId; int /*<<< orphan*/  dwMinorVersion; int /*<<< orphan*/  dwMajorVersion; } ;
typedef  TYPE_1__ OSVERSIONINFOW ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ VER_PLATFORM_WIN32_NT ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t) ; 
 char* FUNC10 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC13 (char*) ; 
 char* user_agent ; 

__attribute__((used)) static void FUNC14(void)
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

    FUNC2(&info);
    is_nt = info.dwPlatformId == VER_PLATFORM_WIN32_NT ? ntW : emptyW;

    if(sizeof(void*) == 8)
        os_type = win64W;
    else if(FUNC3(FUNC1(), &is_wow) && is_wow)
        os_type = wow64W;
    else
        os_type = emptyW;

    FUNC12(buf, formatW, is_nt, info.dwMajorVersion, info.dwMinorVersion, os_type);
    len = FUNC13(buf);

    size = len+40;
    ret = FUNC9(size * sizeof(WCHAR));
    if(!ret)
        return;

    FUNC11(ret, buf, len*sizeof(WCHAR));

    res = FUNC6(HKEY_LOCAL_MACHINE, post_platform_keyW, &key);
    if(res == ERROR_SUCCESS) {
        DWORD value_len;

        while(1) {
            value_len = FUNC0(buf);
            res = FUNC5(key, idx, buf, &value_len, NULL, NULL, NULL, NULL);
            if(res != ERROR_SUCCESS)
                break;
            idx++;

            if(len + value_len + 2 /* strlen("; ") */ + 1 /* trailing ')' */ >= size) {
                tmp = FUNC10(ret, (size*2+value_len)*sizeof(WCHAR));
                if(!tmp)
                    break;
                ret = tmp;
                size = size*2+value_len;
            }

            ret[len++] = ';';
            ret[len++] = ' ';
            FUNC11(ret+len, buf, value_len*sizeof(WCHAR));
            len += value_len;
        }

        FUNC4(key);
    }

    ret[len++] = ')';
    ret[len++] = 0;

    user_agent = ret;
    FUNC7("Using user agent %s\n", FUNC8(user_agent));
}