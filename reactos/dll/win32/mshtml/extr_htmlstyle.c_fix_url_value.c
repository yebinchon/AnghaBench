
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int urlW ;
typedef unsigned char WCHAR ;
typedef unsigned char* LPWSTR ;
typedef int LPCWSTR ;


 unsigned char* heap_strdupW (int ) ;
 int strchrW (int ,char) ;
 scalar_t__ strncmpW (int ,unsigned char const*,int) ;

__attribute__((used)) static LPWSTR fix_url_value(LPCWSTR val)
{
    WCHAR *ret, *ptr;

    static const WCHAR urlW[] = {'u','r','l','('};

    if(strncmpW(val, urlW, sizeof(urlW)/sizeof(WCHAR)) || !strchrW(val, '\\'))
        return ((void*)0);

    ret = heap_strdupW(val);

    for(ptr = ret; *ptr; ptr++) {
        if(*ptr == '\\')
            *ptr = '/';
    }

    return ret;
}
