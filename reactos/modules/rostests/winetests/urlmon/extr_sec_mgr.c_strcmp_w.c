
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int lstrlenW (int const*) ;
 int memcmp (int const*,int const*,int) ;

__attribute__((used)) static int strcmp_w(const WCHAR *str1, const WCHAR *str2)
{
    DWORD len1 = lstrlenW(str1);
    DWORD len2 = lstrlenW(str2);

    if(len1!=len2) return 1;
    return memcmp(str1, str2, len1*sizeof(WCHAR));
}
