
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreaderinput ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int DWORD ;


 int memcpy (int *,int const*,int) ;
 int * readerinput_alloc (int *,int) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline WCHAR *readerinput_strdupW(xmlreaderinput *input, const WCHAR *str)
{
    LPWSTR ret = ((void*)0);

    if(str) {
        DWORD size;

        size = (strlenW(str)+1)*sizeof(WCHAR);
        ret = readerinput_alloc(input, size);
        if (ret) memcpy(ret, str, size);
    }

    return ret;
}
