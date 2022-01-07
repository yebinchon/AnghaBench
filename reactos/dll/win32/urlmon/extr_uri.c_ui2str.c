
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int DWORD ;


 int sprintfW (char*,char const*,int ) ;

__attribute__((used)) static DWORD ui2str(WCHAR *dest, UINT value) {
    static const WCHAR formatW[] = {'%','u',0};
    DWORD ret = 0;

    if(!dest) {
        WCHAR tmp[11];
        ret = sprintfW(tmp, formatW, value);
    } else
        ret = sprintfW(dest, formatW, value);

    return ret;
}
