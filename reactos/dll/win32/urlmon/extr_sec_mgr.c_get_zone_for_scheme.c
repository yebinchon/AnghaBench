
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char const* LPCWSTR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ REG_DWORD ;
 scalar_t__ RegQueryValueExW (int ,char const*,int *,scalar_t__*,int *,scalar_t__*) ;
 int TRUE ;
 int WARN (char*,scalar_t__,int ) ;
 int debugstr_w (char const*) ;

__attribute__((used)) static BOOL get_zone_for_scheme(HKEY key, LPCWSTR schema, DWORD *zone)
{
    static const WCHAR wildcardW[] = {'*',0};

    DWORD res;
    DWORD size = sizeof(DWORD);
    DWORD type;


    res = RegQueryValueExW(key, schema, ((void*)0), &type, (BYTE*)zone, &size);
    if(res == ERROR_SUCCESS) {
        if(type == REG_DWORD)
            return TRUE;
        WARN("Unexpected value type %d for value %s, expected REG_DWORD\n", type, debugstr_w(schema));
    }


    size = sizeof(DWORD);
    res = RegQueryValueExW(key, wildcardW, ((void*)0), &type, (BYTE*)zone, &size);
    if(res != ERROR_SUCCESS)
        return FALSE;

    if(type != REG_DWORD) {
        WARN("Unexpected value type %d for value %s, expected REG_DWORD\n", type, debugstr_w(wildcardW));
        return FALSE;
    }

    return TRUE;
}
