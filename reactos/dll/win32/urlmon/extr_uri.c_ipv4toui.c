
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int DWORD ;



__attribute__((used)) static UINT ipv4toui(const WCHAR *ip, DWORD len) {
    UINT ret = 0;
    DWORD comp_value = 0;
    const WCHAR *ptr;

    for(ptr = ip; ptr < ip+len; ++ptr) {
        if(*ptr == '.') {
            ret <<= 8;
            ret += comp_value;
            comp_value = 0;
        } else
            comp_value = comp_value*10 + (*ptr-'0');
    }

    ret <<= 8;
    ret += comp_value;

    return ret;
}
