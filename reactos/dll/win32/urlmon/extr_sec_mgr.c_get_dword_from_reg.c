
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPDWORD ;
typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;


 int REG_DWORD ;
 int RegQueryValueExW (scalar_t__,int ,int *,int*,int ,int*) ;
 int TRACE (char*,int ,int) ;
 int debugstr_w (int ) ;

__attribute__((used)) static void get_dword_from_reg(HKEY hcu, HKEY hklm, LPCWSTR name, LPDWORD out)
{
    DWORD type = REG_DWORD;
    DWORD len = sizeof(DWORD);
    DWORD res;

    res = RegQueryValueExW(hcu, name, ((void*)0), &type, (LPBYTE) out, &len);

    if (res && hklm) {
        len = sizeof(DWORD);
        type = REG_DWORD;
        res = RegQueryValueExW(hklm, name, ((void*)0), &type, (LPBYTE) out, &len);
    }

    if (res) {
        TRACE("%s failed: %d\n", debugstr_w(name), res);
        *out = 0;
    }
}
